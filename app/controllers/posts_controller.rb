class PostsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @my_posts  = current_user.posts.includes(:user).order("created_at DESC") 
    @other_posts  = Post.where.not(user_id: current_user.id).includes(:user).order("created_at DESC")
    @posts  = Post.order("created_at DESC")

    @good = Post.where(mental:'sentiment_very_satisfied').count.to_f / Post.count('mental').to_f * 100
    @normal = Post.where(mental:'sentiment_neutral').count.to_f / Post.count('mental').to_f * 100
    @bad = Post.where(mental:'sentiment_very_dissatisfied').count.to_f / Post.count('mental').to_f * 100

    @pie_chart = Post.where(user_id: current_user.id).group(:category).sum(:price)
    @line_chart = Post.where(user_id: current_user.id).group(:created_at).count

    @like = Like.new
  end

  def new
    @post = Post.new
  end

  def create
    # Post.create(price: post_params[:price], category: post_params[:category], mental: post_params[:mental], memo: post_params[:memo], user_id: current_user.id)
    Post.create(post_params)
    flash[:notice] = '投稿できました！'
    redirect_to :root
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user_id == current_user.id
  end

  def edit
    @post = Post.find(params[:id])
    flash[:notice] = '内容を編集しました'
    @like = Like.new
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params) if post.user_id == current_user.id
    redirect_to :root
  end

  private
  def post_params
    params.require(:post).permit(:price, :category, :mental, :memo).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
 
end

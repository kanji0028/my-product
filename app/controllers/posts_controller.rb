class PostsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @my_posts  = current_user.posts.includes(:user).order("created_at DESC") 
    @other_posts  = Post.where.not(user_id: current_user.id).includes(:user).order("created_at DESC")
    @sum = Post.where(user_id: current_user.id).sum(:price)

    @pie_chart = Post.where(user_id: current_user.id).group(:category).sum(:price)
    @line_chart = Post.where(user_id: current_user.id).group(:created_at).count

  end

  def new
    @post = Post.new
  end

  def create
    Post.create(price: post_params[:price], category: post_params[:category], mental: post_params[:mental], memo: post_params[:memo], user_id: current_user.id)
    flash[:notice] = '投稿できました！'
    redirect_to controller: :posts, action: :index
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user_id == current_user.id
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params) if post.user_id == current_user.id
  end

  private
  def post_params
    params.require(:post).permit(:price, :category, :mental, :memo)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
 
end

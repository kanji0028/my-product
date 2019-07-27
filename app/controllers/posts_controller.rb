class PostsController < ApplicationController

  before_action :move_to_index, except: :index
  
  def index
    @posts = Post.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(price: post_params[:price], category: post_params[:category], mental: post_params[:mental], memo: post_params[:memo], user_id: current_user.id)
    redirect_to controller: :posts, action: :index
  end

  private
  def post_params
    params.require(:post).permit(:price, :category, :mental, :memo)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
 
end

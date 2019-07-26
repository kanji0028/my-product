class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(price:post_params[:price], category:post_params[:category], mental:post_params[:mental], memo:post_params[:memo])
    redirect_to controller: :posts, action: :index
  end

  private
  def post_params
    params.require(:post).permit(:price, :category, :mental, :memo)
  end

end

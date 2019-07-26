class PostsController < ApplicationController
  
  def index
    @posts = "あああ"
  end

  def new
    @post = Post.new
  end

end

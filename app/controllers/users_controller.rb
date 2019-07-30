class UsersController < ApplicationController

  def show
    @name       = current_user.name
    @my_posts   = current_user.posts.order("created_at DESC") 
    @prices     = Post.where(user_id: current_user.id).group(:category).sum(:price)
    @categorys  = Post.where(user_id: current_user.id).group(:created_at).count
    
    @data_category = Post.where(user_id: current_user.id).group("category").sum(:price)

    
    
    @data_mental = Post.where(user_id: current_user.id).group("mental").count
    
    @data_day = Post.where(user_id: current_user.id).group("created_at").count

  end

end
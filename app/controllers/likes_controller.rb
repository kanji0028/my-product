class LikesController < ApplicationController
  
  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    @like.save
    redirect_back(fallback_location: root_path)
    # redirect_to controller: :posts, action: :index
    #どっちでも一緒
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    redirect_to controller: :posts, action: :index
  end
  

end

class UsersController < ApplicationController

  def show
    @my_posts   = current_user.posts.order("created_at DESC") 
    @data_category = Post.where(user_id: current_user.id).group("category").sum(:price)
    @data_mental = Post.where(user_id: current_user.id).group("mental").count


    @sum = Post.where(user_id: current_user.id).sum(:price) #合計
    @this_month_sum = Post.where(user_id: current_user.id, created_at: Time.now.all_month).sum(:price)  # 今月
    @last_month_sum = Post.where(user_id: current_user.id, created_at: Time.now.ago(1.month)).sum(:price)  #先月
    
    @food = Post.where(user_id: current_user.id).where(category: 'restaurant').sum(:price)
    @cart = Post.where(user_id: current_user.id).where(category: 'shopping_cart').sum(:price)
    @train = Post.where(user_id: current_user.id).where(category: 'train').sum(:price)
    @import_contacts = Post.where(user_id: current_user.id).where(category: 'import_contacts').sum(:price)
    @card_travel = Post.where(user_id: current_user.id).where(category: 'card_travel').sum(:price)
    @bikes = Post.where(user_id: current_user.id).where(category: 'directions_bike').sum(:price)
    @payment = Post.where(user_id: current_user.id).where(category: 'payment').sum(:price)
    @star = Post.where(user_id: current_user.id).where(category: 'star').sum(:price)
    binding.pry
  end

  def index
    @posts = current_user.posts.order("created_at DESC").page(params[:page]).per(6)
  end



end
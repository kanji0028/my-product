class UsersController < ApplicationController

  before_action :set_user, only: [:show ,:index]

  def show
    @my_posts   = @user.order("created_at DESC") 
    @data_category = @user.group("category").sum(:price)
    @data_mental = @user.group("mental").count

    @sum = @user.sum(:price) #合計
    @this_month_sum = @user.where(created_at: Time.now.all_month).sum(:price)  # 今月
    @last_month_sum = @user.where(created_at: Time.now.ago(1.month)).sum(:price)  #先月
    
    food = @user.where(category: 'restaurant').sum(:price)
    cart = @user.where(category: 'shopping_cart').sum(:price)
    train = @user.where(category: 'train').sum(:price)
    import_contacts = @user.where(category: 'import_contacts').sum(:price)
    card_travel = @user.where(category: 'card_travel').sum(:price)
    bikes = @user.where(category: 'directions_bike').sum(:price)
    payment = @user.where(category: 'payment').sum(:price)
    star = @user.where(category: 'star').sum(:price)
    price = [food ,cart, train ,import_contacts ,card_travel ,bikes, payment, star]

    category = ["restaurant", "shopping_cart", "train", "import_contacts", "card_travel", "directions_bike", "payment", "star"]
    name = ["食費", "日用品", "交通費" ,"書籍", "ファッション", "趣味・娯楽", "カード支払" , "その他"]
    @my_expense = category.zip(name,price)


  end

  def index
    @posts = @user.order("created_at DESC").page(params[:page]).per(6)

  end

  def set_user
    @user = Post.where(user_id: current_user.id)
  end


end
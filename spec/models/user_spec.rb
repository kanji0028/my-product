require 'rails_helper'

describe User do
  describe '#create' do

  it "is valid with a name, email, password, password_confirmation" do
    user = build(:user)
    expect(user).to be_valid #引数にしたインスタンスが全てのバリデーションをクリアする場合
  end

  it "is invalid without a name" do #nameなしでは無効
      user = build(:user, name:"")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
     end

  it "is invalid without a email" do
      user = build(:user, email:"")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
     end

  it "is invalid without a password" do
      user = build(:user, password:"")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
     end
     
  # it "is invalid without a password_confirmation although with a password" do
  #     user = build(:user, password_confirmation: "")
  #     user.valid?
  #     expect(user.errors[:password_confirmation]).to include("can't be blank")
  #   end

  it "is invalid with a duplicate email address" do
    user = create(:user)
    another_user =build(:user)
    another_user.valid?
    expect(another_user.errors[:email]).to include("has already been taken")
  end


  end
 end
 
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(
      username: params["user"][:username],
      email: params["user"][:email],
      password: params["user"][:password],
      password_confirmation: params["user"][:password_confirmation]
    )
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

end
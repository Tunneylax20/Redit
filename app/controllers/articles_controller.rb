class ArticlesController < ApplicationController

  before_action :load_user, only: [:new, :create]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(
      url: params["article"]["url"],
      title: get_title,
      user: @user
      )
    redirect_to root_path
  end

  private

  def load_user
    @user = User.find(params[:user_id])
  end

  def get_title
    agent = Mechanize.new
    title = agent.get(params["article"]["url"]).title
  end

end
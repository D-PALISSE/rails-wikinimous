class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  # CRUD
  # Create
  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save

    redirect_to articles_path
  end

  # Read
  def show
  end

  # Update
  def edit
  end

  def update
    @article.update(article_params)

    redirect_to articles_path
  end

  # Delete
  def destroy
    @article.destroy

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

  def index
    @articles = Article.all
  end

  def show
  end

  private
  def article_params
    params.require(:article).permit(:title, :description, :image)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end

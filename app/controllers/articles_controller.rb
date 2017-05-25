class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.create(article_params)

    if @article.save
      redirect_to admin_index_path, flash: {notice: 'Clanek je bil ustvarjen!'}
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to admin_index_path, flash: {notice: 'Clanek posodobljen!'}
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    if @article.destroy
      redirect_to admin_index_path, flash: {notice: 'Clanek uspesno izbrisan!'}
    else
      redirect_to admin_index_path, flash: {notice: 'Clanka ni bilo mogoce izbrisati!!'}
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :description, :image)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end

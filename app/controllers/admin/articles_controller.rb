class Admin::ArticlesController < Admin::BaseController
  before_action :set_article, only: [:show, :edit]


  def index
    @articles = Article.order(:created_at).page params[:page]
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
      redirect_to admin_articles_path, flash: { success: 'Clanek uspesno ustvarjen' }
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to admin_articles_path, flash: { success: 'Clanek uspesno posodobljen' }
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    if @article.destroy
      redirect_to admin_articles_path, flash: {success: 'Clanek uspesno izbrisan!'}
    else
      redirect_to admin_articles_path, flash: {alert: 'Clanka ni bilo mogoce izbrisati!!'}
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

class AdminController < ApplicationController
  before_action :authenticate_admin!
  layout 'administration'


  def index
    @articles = Article.order(:created_at).page params[:page]
  end
end

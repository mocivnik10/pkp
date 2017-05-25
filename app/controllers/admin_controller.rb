class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @articles = Article.all
  end
end

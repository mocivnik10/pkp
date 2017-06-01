class LandingController < ApplicationController
  def index
    @articles = Article.order('created_at').limit(3)
  end
end

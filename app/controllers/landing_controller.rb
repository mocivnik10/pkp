class LandingController < ApplicationController
  def index
    @articles = Article.order('created_at').limit(3)
    @testimonials = Testimonial.order('created_at').limit(9)
    @ipm_suggestions = IpmSuggestion.order('created_at').limit(6)
  end
end

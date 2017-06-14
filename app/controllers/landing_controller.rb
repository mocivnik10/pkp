class LandingController < ApplicationController
  def index
    @articles = Article.order('created_at').limit(3)
    @testimonials = Testimonial.all
    @first_three_testimonials = Testimonial.order('created_at').limit(3)
    @second_three_testimonials = Testimonial.order('created_at').limit(6).offset(3)
    @ipm_suggestions = IpmSuggestion.order('created_at').limit(6)
  end
end

class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:show]

  def index
    @testimonials = Testimonial.all
  end

  def show
  end

  private
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    def testimonial_params
      params.require(:testimonial).permit(:first_name, :last_name, :company_name, :description)
    end
end

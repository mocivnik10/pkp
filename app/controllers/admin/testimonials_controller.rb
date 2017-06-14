class Admin::TestimonialsController < Admin::BaseController
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  def index
    @testimonials = Testimonial.order(:created_at).page params[:page]
  end

  def show
  end

  def new
    @testimonial = Testimonial.new
  end

  def edit
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      redirect_to admin_testimonials_path, flash: {success: 'Citat uspesno ustvarjen!'}
    else
      render 'new'
    end
  end

  def update
    if @testimonial.update(testimonial_params)
      redirect_to admin_testimonials_path, flash: {success: 'Citat uspesno posodobljen!'}
    else
      render 'edit'
    end
  end

  def destroy
    if @testimonial.destroy
      redirect_to admin_testimonials_path, flash: {success: 'Citat uspesno izbrisan!'}
    else
      redirect_to admin_testimonials_path, flash: {alert: 'Citata ni bilo mogoce izbrisati!'}
    end
  end

  private
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    def testimonial_params
      params.require(:testimonial).permit(:first_name, :last_name, :company_name, :description)
    end
end

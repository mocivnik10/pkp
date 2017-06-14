class Admin::IpmSuggestionsController < Admin::BaseController
  before_action :set_ipm_suggestion, only: [:show, :edit, :update, :destroy]

  def index
    @ipm_suggestions = IpmSuggestion.all
  end

  def show
  end

  def new
    @ipm_suggestion = IpmSuggestion.new
  end

  def edit
  end

  def create
    @ipm_suggestion = IpmSuggestion.new(ipm_suggestion_params)

    if @ipm_suggestion.save
      redirect_to admin_ipm_suggestions_path, flash: {notice: 'Predlog uspesno ustvarjen!'}
    else
      render 'new'
    end
  end

  def update
    if @ipm_suggestion.update(ipm_suggestion_params)
      redirect_to admin_ipm_suggestions_path, flash: {notice: 'Predlog uspesno posodobljen!'}
    else
      render 'edit'
    end
  end

  def destroy
    if @ipm_suggestion.destroy
      redirect_to admin_ipm_suggestions_path, flash: {notice: 'Predlog uspesno zbrisan!'}
    else
      redirect_to admin_ipm_suggestions_path, flash: {notice: 'Predloga ni bilo mogoce izbrisati'}
    end
  end

  private
    def set_ipm_suggestion
      @ipm_suggestion = IpmSuggestion.find(params[:id])
    end

    def ipm_suggestion_params
      params.require(:ipm_suggestion).permit(:title, :description, :icon)
    end
end

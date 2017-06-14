class IpmSuggestionsController < ApplicationController
  before_action :set_ipm_suggestion, only: [:show]

  def index
    @ipm_suggestions = IpmSuggestion.all
  end

  def show
  end

  private
    def set_ipm_suggestion
      @ipm_suggestion = IpmSuggestion.find(params[:id])
    end
        
    def ipm_suggestion_params
      params.require(:ipm_suggestion).permit(:title, :description, :icon)
    end
end

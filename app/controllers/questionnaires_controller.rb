class QuestionnairesController < ApplicationController
  def new
  end
  def create
    render plain: params[:questionnaire].inspect
  end
end

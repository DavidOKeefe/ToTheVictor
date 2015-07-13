class ScorecardsController < ApplicationController
  def new
    @scorecard = Scorecard.new
  end

  def create
    scorecard = Scorecard.new(scorecard_params)
    if scorecard.save
      redirect_to players_path(scorecard_id: scorecard.id)
    else
      flash[:alert] = "Error! Scorecard not created"
      render :new
    end
  end

  private

  def scorecard_params
    params.require(:scorecard).permit(:name)
  end
end

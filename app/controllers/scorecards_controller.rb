class ScorecardsController < ApplicationController

  def index
    @scorecards = current_user.scorecards
  end

  def new
    @scorecard = Scorecard.new
  end

  def create
    scorecard = Scorecard.new(new_scorecard_params)
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

  def new_scorecard_params
    scorecard_params.merge(user: current_user)
  end
end

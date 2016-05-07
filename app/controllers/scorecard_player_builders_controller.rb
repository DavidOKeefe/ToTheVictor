class ScorecardPlayerBuildersController < ApplicationController

  def new
    @scorecard_player_builder = ScorecardPlayerBuilder.new(scorecard_id: params[:scorecard_id])
  end

  def create
    @scorecard_player_builder = ScorecardPlayerBuilder
                                  .new(scorecard_player_builder_params)
    if @scorecard_player_builder.scorecard_player
      scorecard = @scorecard_player_builder.scorecard
      @players = scorecard.players
      redirect_to players_path(scorecard_id: scorecard.id), notice: "Player created"
    else
      flash[:alert] = @scorecard_player_builder.errors.full_messages
      redirect_to new_scorecard_player_builders_path(scorecard_id: params[:scorecard_player_builder][:scorecard_id])
    end
  end

  private

  def scorecard_player_builder_params
    params.require(:scorecard_player_builder).permit(:name, :scorecard_id)
  end
end

class ScorecardPlayerBuildersController < ApplicationController
  respond_to :html

  def new
    @scorecard_player_builder = ScorecardPlayerBuilder.new(params)
  end

  def create
    @scorecard_player_builder = ScorecardPlayerBuilder
                                  .new(scorecard_player_builder_params)
    if @scorecard_player_builder.save
      @players = Player.all
      flash[:notice] = "Player created"
    end

    respond_with @players, location: players_path
  end

  private

  def scorecard_player_builder_params
    params.require(:scorecard_player_builder).permit(:name)
  end
end

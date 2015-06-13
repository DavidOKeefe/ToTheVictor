class ScorecardPlayerBuildersController < ApplicationController
  respond_to :html

  def new
    @scorecard_player_builder = ScorecardPlayerBuilder.new(params)
  end

  def create
    @scorecard_player_builder = ScorecardPlayerBuilder.new(params)
    if @scorecard_player_builder.save
      @players = Player.all
      flash[:notice] = "Player created"
      respond_with @players, location: players_path
    end
  end
end

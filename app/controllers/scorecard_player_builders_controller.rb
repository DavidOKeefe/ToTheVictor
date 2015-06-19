class ScorecardPlayerBuildersController < ApplicationController

  def new
    @scorecard_player_builder = ScorecardPlayerBuilder.new({})
  end

  def create
    @scorecard_player_builder = ScorecardPlayerBuilder
                                  .new(scorecard_player_builder_params)
    if @scorecard_player_builder.save
      @players = Player.all
      redirect_to players_path, notice: "Player created"
    else
      flash[:alert] = "Error! Player not created"
      render :new
    end
  end

  private

  def scorecard_player_builder_params
    params.require(:scorecard_player_builder).permit(:name)
  end
end

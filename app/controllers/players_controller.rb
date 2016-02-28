class PlayersController < ApplicationController
  def index
    @scorecard = Scorecard.find(params[:scorecard_id])
    @players = @scorecard.players
	end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      flash[:notice] = "Player Updated"
      scorecard = @player.scorecard
      redirect_to players_path(scorecard_id: scorecard.id)
    else
      flash[:alert] = "There was a problem!"
    end
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      flash[:notice] = "Player deleted"
      scorecard = @player.scorecard
      redirect_to players_path(scorecard_id: scorecard.id)
    else
      flash[:alert] = "There was a problem!"
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end

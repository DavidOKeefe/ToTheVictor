class PlayersController < ApplicationController
	def index
    @players = Player.all
	end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      @players = Player.all
      flash[:notice] = "Player created"
      render :index
    else
      flash[:alert] = @player.errors.full_messages.join(', ')
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      flash[:notice] = "Player Updated"
      redirect_to players_path
    else
      flash[:alert] = "There was a problem!"
    end
  end

  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      flash[:notice] = "Player deleted"
      redirect_to players_path
    else
      flash[:alert] = "There was a problem!"
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end

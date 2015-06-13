class ScorecardPlayerBuilder
  include ActiveModel::Model

  attr_reader :name, :player_attributes

  def initialize(params)
    @player_attributes = params[:scorecard_player_builder]
  end

  def save
    create_player
  end

  private

  def create_player
    player.save
  end

  def player
    Player.new(player_attributes)
  end
end

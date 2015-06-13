class ScorecardPlayerBuilder
  include ActiveModel::Model

  attr_reader :name, :player, :player_attributes
  private :player

  def initialize(player_attributes)
    @player_attributes = player_attributes
  end

  def save
    create_player
  end

  private

  def create_player
    player.save
  end

  def player
    @player ||= Player.new(player_attributes)
  end
end

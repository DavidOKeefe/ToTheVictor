class ScorecardPlayerBuilder
  include ActiveModel::Model

  attr_accessor :name, :scorecard_id
  attr_reader :player, :player_attributes
  private :player

  def initialize(player_attributes = {})
    @player_attributes = player_attributes
    @name = player_attributes[:name] ||= "Enter Name here!"
    @scorecard_id = player_attributes[:scorecard_id]
  end

  def scorecard_player
    if player.save
      scorecard.players << player
    end
  end

  def errors
    player.errors
  end

  def scorecard
    Scorecard.find(scorecard_id)
  end

  private

  def player
    @player ||= Player.new(player_attributes)
  end
end

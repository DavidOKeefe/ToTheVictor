class ScorecardPlayerBuilder
  include ActiveModel::Model

  attr_accessor :name
  attr_reader :player

  def initialize(params)
    @params = params
  end

  def built?
    player.persisted?
  end

  private

  def player
    @player ||= Player.create(name: 'sally')
  end
end

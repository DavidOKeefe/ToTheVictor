class ScorecardPlayerBuilder
  include ActiveModel::Model

  attr_accessor :name

  def initialize(params)
    @params = params
  end

  def make
    Player.create(name: 'sally')
  end
end

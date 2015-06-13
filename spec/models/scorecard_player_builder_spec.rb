require 'spec_helper'

describe ScorecardPlayerBuilder do
  let(:scorecard_player_builder) { described_class.new([]) }

  describe '#make' do
    it 'persists a player' do
      expect{
        scorecard_player_builder.make
      }.to change{Player.all.size}.by 1
    end
  end
end

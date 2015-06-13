require 'spec_helper'

describe ScorecardPlayerBuilder do
  let(:scorecard_player_builder) { described_class.new([]) }

  describe '#built?' do
    it 'returns true if player is persisted' do
      expect(scorecard_player_builder.built?).to be_truthy
    end
  end
end

require 'spec_helper'

describe ScorecardPlayerBuilder do
  let(:scorecard_player_builder) { described_class.new(params) }
  let(:scorecard) { create(:scorecard) }
  let(:params) { { name: 'Lola', scorecard_id: scorecard.id } }

  describe '#scorecard_player' do
    it 'is truthy when successful' do
      expect(scorecard_player_builder.scorecard_player).to be_truthy
    end
  end
end

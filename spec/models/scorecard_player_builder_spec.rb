require 'spec_helper'

describe ScorecardPlayerBuilder do
  let(:scorecard_player_builder) { described_class.new(params) }
  let(:params) { { scorecard_player_builder:  { name: 'Lola' } } }

  describe '#save' do
    it 'is truthy when successful' do
      expect(scorecard_player_builder.save).to be_truthy
    end
  end
end

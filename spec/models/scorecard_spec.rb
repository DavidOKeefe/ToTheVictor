require 'spec_helper'

describe Scorecard do
  let(:scorecard) { described_class.new }

  specify 'a valid resource' do
    expect(scorecard).to be_valid
  end

  context 'with players' do
    let(:player) { create(:player) }
    before { scorecard.players << player }

    specify 'has many players' do
      expect(scorecard.players.first).to eq player
    end
  end
end

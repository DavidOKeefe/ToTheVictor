require 'spec_helper'

describe Scoreboard do
  let(:scoreboard) { described_class.new }

  specify 'a valid resource' do
    expect(scoreboard).to be_valid
  end

  context 'with players' do
    let(:player) { create(:player) }
    before { scoreboard.players << player }

    specify 'has many players' do
      expect(scoreboard.players.first).to eq player
    end
  end
end

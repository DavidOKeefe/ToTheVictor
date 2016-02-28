steps_for :player do
  step 'I am at the players index' do
    @scorecard = create(:scorecard)
    visit players_path(scorecard_id: @scorecard.id)
  end

  step 'I name the new player :name' do |name|
    fill_in 'scorecard_player_builder_name', with: name
  end

  step 'I update the player name :name' do |name|
    fill_in 'player_name', with: name
  end

  step 'A previous scorecard already exists with a player' do
    scorecard = create(:scorecard)
    scorecard.players.create(name: 'Esme')
  end

  step 'I add a players to the scorecard' do
    @scorecard.players.create(name: 'Jake')
  end

  step 'I return to the players index' do
    visit players_path(scorecard_id: @scorecard.id)
  end

  step 'I see :number players displayed' do |number|
    expect(page).to have_selector('.added_players', count: 1)
  end
end

steps_for :player do
  step 'I am at the players index' do
    scorecard = create(:scorecard)
    visit players_path(scorecard_id: scorecard.id)
  end

  step 'I name the new player :name' do |name|
    fill_in 'scorecard_player_builder_name', with: name
  end

  step 'I update the player name :name' do |name|
    fill_in 'player_name', with: name
  end
end

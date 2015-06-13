steps_for :player do
  step 'I am at the players index' do
    visit players_path
  end

  step 'I name the new player :name' do |name|
    fill_in 'scorecard_player_builder_name', with: name
  end

  step 'I update the player name :name' do |name|
    fill_in 'scorecard_player_builder_name', with: name
  end
end

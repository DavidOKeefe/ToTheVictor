steps_for :scorecard do
  step 'I name my new scorecard :name' do |name|
    fill_in 'scorecard_name', with: name
  end

  step 'I have a scorecard named :name' do |name|
    @user.scorecards.create(name: name)
  end
end

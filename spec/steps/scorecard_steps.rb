steps_for :scorecard do
  step 'I name my new scorecard :name' do |name|
    fill_in 'scorecard_name', with: name
  end
end

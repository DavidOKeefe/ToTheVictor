step 'I click the :text link' do |text|
  click_link text
end

step 'I click the first :text link' do |text|
  click_link text, match: :first
end

step 'I click the :text button' do |text|
  click_button text
end

step 'I see :text' do |text|
  expect(page).to have_content text
end

step 'I do not see :text' do |text|
  expect(page).not_to have_content text
end

step 'I am a logged in user' do
  @user = create(:user)
  visit '/'
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: @user.password
  click_button 'Log in'
end

step 'I am at the root path' do
  visit '/'
end

require 'rails_helper'

feature 'Signing up as a new user' do
  scenario 'logs me in when successful' do
    user = build_stubbed(:user)

    visit root_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign in'
  end
end

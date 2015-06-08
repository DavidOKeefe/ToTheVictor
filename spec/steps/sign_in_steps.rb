steps_for :sign_in do
  step 'I am a registered user' do
    @user = create(:user)
  end

  step 'I provide a valid email and password' do
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
  end
end

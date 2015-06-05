step 'I click the :text link' do |text|
  click_link text
end

step 'I click the :text button' do |text|
  click_button text
end

step 'I see :text' do |text|
  expect(page).to have_content text
end

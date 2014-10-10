FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "BeatrixKiddo#{n}@incisor.com" }
    password 'Test1234'
  end
end

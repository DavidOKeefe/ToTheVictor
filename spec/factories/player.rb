FactoryGirl.define do
  factory :player do
    sequence(:name) do |n|
      "Esme#{n}"
    end
  end
end
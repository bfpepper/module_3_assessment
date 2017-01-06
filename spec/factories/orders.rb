FactoryGirl.define do
  factory :user do
    amount Faker::Commerce.price
    user
  end
end

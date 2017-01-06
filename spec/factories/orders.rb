FactoryGirl.define do
  factory :order do
    amount Faker::Commerce.price
    user
  end
end

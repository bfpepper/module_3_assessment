FactoryGirl.define do
  factory :order do
    amount Faker::Commerce.price
  end
end

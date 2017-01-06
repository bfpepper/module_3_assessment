FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    factory :user_with_orders do
      orders {create_list(:order, 2)}
    end
  end
end

FactoryGirl.define do
  factory :item do
    name Faker::Commerce.product_name
    description Faker::Hipster.sentence
    image_url "https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fgadgets.boingboing.net%2Ffilesroot%2Fgoateesaver.jpg&f=1"
  end
end

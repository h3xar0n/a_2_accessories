FactoryGirl.define do
  sequence(:name) { |n| "bike#{n}@example.com" }

  factory :product do
    name "Bracelet"
    description "Coming soon!"
    image_url "www.picture.pic.com"
    price 666
  end
end
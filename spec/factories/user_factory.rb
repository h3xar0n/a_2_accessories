FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}

  factory :user do
    email "flynn@encom.com"
    password "HeyMan1982"
    first_name "Kevin"
    last_name "Flynn"
    admin false
  end

  factory :admin, class: User do
    email "darthvader@empire.gov"
    password "$ithLord66"
    first_name "Darth"
    last_name "Vader"
    admin true
  end
end
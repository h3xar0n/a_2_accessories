FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com"}
  factory :user do
  	email "darthvader@empire.gov"
  	password "$ithLord66"
  	first_name "Darth"
  	last_name "Vader"
  	admin false
  end
end
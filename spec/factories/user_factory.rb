FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com"}
  factory :user do
    email
    password "imbetter5"
    first_name "Chuck"
    last_name "Wagon"
    admin false
  end 
  factory :admin, class: User do
  	email
  	password "weirdo17"
  	admin true
  	first_name
  	last_name
  end
end
FactoryGirl.define do
  factory :author do
    title "Mr"
    first_name "Jonathan"
    surname "Sayer"
    email "test@email.com"
    password "password"
    password_confirmation "password"
  end
end

FactoryGirl.define do
  factory :author do
    title { Faker::Name.prefix }
    first_name { Faker::Name.first_name }
    surname { Faker::Name.last_name }
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end
end

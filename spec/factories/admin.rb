FactoryGirl.define do
  factory :admin do |a|
    a.first_name "Jonathan"
    a.surname "Sayer"
    a.email "test@email.com"
    a.password "password"
    a.password_confirmation "password"
  end
end

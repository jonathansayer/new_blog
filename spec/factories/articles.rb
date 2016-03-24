FactoryGirl.define do
  factory :article do
    title {Faker::Lorem.word}
    body {Faker::Lorem.paragraph(2, true, 4)}
    author
  end
end

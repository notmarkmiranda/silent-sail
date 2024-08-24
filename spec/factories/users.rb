FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{Faker::Internet.email}#{n}" }
    password_digest { "password1234" }
    nickname { Faker::Superhero.name }
  end
end

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }
    password_digest { "password1234" }
    nickname { Faker::Superhero.name }
  end
end

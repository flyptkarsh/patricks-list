require 'faker'

FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password "111111"
    password_confirmation "111111"
  end

  factory :list do
    heading Faker::Hipster.sentence
    sub_heading Faker::Hipster.sentence
    description Faker::Hipster.sentence
    association :user, factory: :user
  end

  factory :place do
    name Faker::Hipster.sentence
    address Faker::Hipster.sentence
    heading Faker::Hipster.sentence
    description Faker::Hipster.sentence
    latitude "9.99"
    longitude "9.99"
    list association :list, factory: :list
  end

end

require 'ffaker'

FactoryGirl.define do
  factory :user do

    sequence(:email) { |n| "person#{n}@example.com" }
    password "MARBLECAKE_ALSO_THE_CAKE"

    trait :with_pageants do
      after(:create) do |instance|
        create_list :pageant, 2, user: instance
      end
    end
  end

  factory :pageant do
    user
    name "#{Faker::Company.name} Pageant"

    trait :with_candidates do
      after(:create) do |instance|
        create_list :candidate, 2, pageant: instance
      end
    end
  end

  factory :candidate do
    pageant
    first_name "#{Faker::Name.first_name}"
    last_name "#{Faker::Name.last_name}"
  end
end

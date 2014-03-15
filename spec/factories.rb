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
  end
end

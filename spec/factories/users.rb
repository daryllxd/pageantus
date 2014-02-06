require 'ffaker'

FactoryGirl.define do
  factory :user do

    sequence(:email) { |n| "person#{n}@example.com" }
    password "MARBLECAKE_ALSO_THE_CAKE"
  end
end

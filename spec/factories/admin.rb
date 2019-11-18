FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "tester#{n}@example.com" }
    sequence(:password) { |m| "tester#{m}" }
  end
end

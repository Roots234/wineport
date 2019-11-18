FactoryBot.define do
  factory :basket_product do
    association :product
    association :basket
  end
end

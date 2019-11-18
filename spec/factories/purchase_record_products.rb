FactoryBot.define do
  factory :purchase_record_product do
    association :purchase_record
    association :product
  end
end

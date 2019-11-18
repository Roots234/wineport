FactoryBot.define do
  factory :purchase_record do
    before(:build) do |record|
      record.purchase_record_product << FactoryBot.create(:purchase_record_product)
    end
    user_id 1
  end
end

FactoryBot.define do
  factory :basket do
    before(:build) do |basket|
      basket.basket_product << FactoryBot.create(:basket_product)
    end
    user_id 1
  end
end

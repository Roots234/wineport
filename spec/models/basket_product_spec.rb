require 'rails_helper'

RSpec.describe BasketProduct, type: :model do
  before do
    @basket_product = FactoryBot.build(:basket_product)
  end

  describe 'validation' do
    it 'is valid with a name, description, admin_id,image and price' do
      expect(@basket_product).to be_valid
    end
  end
end

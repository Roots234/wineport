require 'rails_helper'

RSpec.describe PurchaseRecordProduct, type: :model do
  before do
    @purchase_record_product = FactoryBot.build(:purchase_record_product)
  end

  describe 'validation' do
    it 'is valid with a name, description, admin_id,image and price' do
      expect(@purchase_record_product).to be_valid
    end
  end
end

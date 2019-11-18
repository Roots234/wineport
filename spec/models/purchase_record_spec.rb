require 'rails_helper'

RSpec.describe PurchaseRecord, type: :model do
  before do
    @purchase_record = FactoryBot.build(:purchase_record)
  end

  describe 'validation' do
    it 'is valid with a name, description, admin_id,image and price' do
      expect(@purchase_record).to be_valid
    end
  end
end

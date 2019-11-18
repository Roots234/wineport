require 'rails_helper'

RSpec.describe Basket, type: :model do
  before do
    @basket = FactoryBot.build(:basket)
  end

  describe 'validation' do
    it 'is valid with a name, description, admin_id,image and price' do
      expect(@basket).to be_valid
    end
  end
end

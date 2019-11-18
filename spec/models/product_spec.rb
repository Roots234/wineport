require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe 'validation' do
    it 'is valid with a name, description, admin_id,image and price' do
      expect(@product).to be_valid
    end

    it 'is invalid without name' do
      @product.name = ''
      @product.valid?
      expect(@product.errors[:name]).to_not include("can't be blank")
    end

    it 'is invalid without description' do
      @product.description = ''
      @product.valid?
      expect(@product.errors[:description]).to_not include("can't be blank")
    end

    it 'is invalid without price' do
      @product.price = ''
      @product.valid?
      expect(@product.errors[:price]).to_not include("can't be blank")
    end

    it 'is invalid with a duplicate name' do
      @product.name = 'red wine'
      product = Product.new(
        name: 'red wine'
      )
      product.valid?
      expect(product.errors[:name]).to_not include('has already been taken')
    end
  end
end

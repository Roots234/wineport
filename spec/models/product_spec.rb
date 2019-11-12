require 'rails_helper'

RSpec.describe Product, type: :model do
     
    it "is valid with a name, description, admin_id,image and price" do
      product = FactoryBot.build(:product)
      expect(product).to be_valid
    end
     
    it "is invalid without name" do
      product = Product.new(name: nil)
      product.valid?
      expect(product.errors[:name]).to_not include("can't be blank")
    end
    
    it "is invalid without description" do
      product = Product.new(description: nil)
      product.valid?
      expect(product.errors[:description]).to_not include("can't be blank")
    end
    
    it "is invalid without price" do
      product = Product.new(price: nil)
      product.valid?
      expect(product.errors[:price]).to_not include("can't be blank")
    end
    
    it "is invalid with a duplicate name" do
      Product.create(
        name:      "red wine"
     )
      product = Product.new(
        name:      "red wine"
     )
      product.valid?
      expect(product.errors[:name]).to_not include("has already been taken")
    end
   
   
end

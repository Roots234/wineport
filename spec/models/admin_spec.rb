require 'rails_helper'

RSpec.describe Admin, type: :model do
    
    it "has a valid factory" do
        expect(FactoryBot.build(:admin)).to be_valid
    end
     
    it "is valid with a email, and password" do
       admin = FactoryBot.build(:admin)
       expect(admin).to be_valid
    end
     
    it "is invalid without email" do
      admin = FactoryBot.build(:admin, email: nil)
      admin.valid?
      expect(admin.errors[:email]).to include("が入力されていません。")
    end
    
    it "is invalid without password" do
      admin = FactoryBot.build(:admin, password: nil)
      admin.valid?
      expect(admin.errors[:password]).to include("が入力されていません。")
    end

    it "is invalid with a duplicate email address" do
      FactoryBot.create(:admin)
      admin = FactoryBot.build(:admin)
      admin.valid?
      expect(admin.errors[:email]).to include("は既に使用されています。")
   end
   
   
end

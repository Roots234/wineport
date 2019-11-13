require 'rails_helper'

RSpec.describe User, type: :model do
    
    it "has a valid factory" do
        expect(FactoryBot.build(:user)).to be_valid
    end
     
    it "is valid with a email, and password" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end
     
    it "is invalid without email" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("が入力されていません。")
    end
    
    it "is invalid without password" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("が入力されていません。")
    end

    it "is invalid with a duplicate email address" do
      FactoryBot.create(:user)
      user = FactoryBot.build(:user)
      user.valid?
      expect(user.errors[:email]).to include("は既に使用されています。")
    end
    
   
end

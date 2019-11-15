require 'rails_helper'

RSpec.describe Admin, type: :model do

  before do 
    @admin = FactoryBot.build(:admin)
  end
    
  describe 'validation' do
    it "has a valid factory" do
        expect(@admin).to be_valid
    end
     
    it "is invalid without email" do
      @admin.email = "nil"
      @admin.valid?
      expect(@admin.errors[:email]).to include("は有効でありません。")
    end
    
    it "is invalid without password" do
      @admin.password = ""
      @admin.valid?
      expect(@admin.errors[:password]).to include("が入力されていません。")
    end

    it "is invalid with a duplicate email address" do
      FactoryBot.create(:admin)
      admin = FactoryBot.build(:admin)
      admin.valid?
      expect(admin.errors[:email]).to include("は既に使用されています。")
   end
  end   
   
end

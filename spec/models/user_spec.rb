require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'validation' do
    it 'has a valid factory' do
      expect(@user).to be_valid
    end

    it 'is invalid without email' do
      @user.email = ''
      @user.valid?
      expect(@user.errors[:email]).to include('が入力されていません。')
    end

    it 'is invalid without password' do
      @user.password = ''
      @user.valid?
      expect(@user.errors[:password]).to include('が入力されていません。')
    end

    it 'is invalid with a duplicate email address' do
      FactoryBot.create(:user)
      user = FactoryBot.build(:user)
      user.valid?
      expect(user.errors[:email]).to include('は既に使用されています。')
    end
  end
end

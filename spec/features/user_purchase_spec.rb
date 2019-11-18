require 'rails_helper'

RSpec.feature 'user_purchase', type: :feature do
  # ユーザーがタスクの状態を切り替える

  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
  end

  describe 'user_purchase_scenario' do
    scenario 'user purchases an item' do
      visit root_path
      click_link 'ログイン'
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_button 'ログイン'
    end
  end
end

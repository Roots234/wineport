require 'rails_helper'

RSpec.feature 'user_purchase', type: :feature do
  # ユーザーがタスクの状態を切り替える

  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
  end

  describe 'ユーザーが商品を購入' do
    scenario 'user purchases an item' do
      visit root_path
      click_link 'ログイン'
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      click_button 'ログイン'
      visit '/products/1'
      click_link '買い物かごに入れる'
      click_on '決済'
      click_link 'ログアウト'
    end
  end
end

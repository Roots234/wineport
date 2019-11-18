require 'rails_helper'

RSpec.feature 'product_register', type: :feature do
  # ユーザーがタスクの状態を切り替える

  before do
    @admin = FactoryBot.create(:admin)
  end

  describe 'product_register_scenario' do
    scenario 'admin register an item' do
      visit root_path
      click_link '出品者ログイン（アドミン）'
      fill_in 'メールアドレス', with: @admin.email
      fill_in 'パスワード', with: @admin.password
      click_link 'ログイン'
      expect {
        click_on '出品管理(アドミン)'
        fill_in "product[name]", with: 'ワイン'
        fill_in "product[description]", with: '説明を記入（テスト用）'
        fill_in "product[price]", with: 11111
        attach_file "テスト用イメージ", "spec/fixtures/noimage.jpg"
        click_link '登録する'
        click_link 'ログアウト'
      }
      
    end
  end
end

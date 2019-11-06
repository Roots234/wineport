require 'rails_helper'

RSpec.feature "user_purchase", type: :feature do
# ユーザーがタスクの状態を切り替える
    scenario "user purchases an item", js: true do
        user = FactoryBot.create(:user)
        product = FactoryBot.create(:product)
        
        visit root_path
        click_link "Sign in"
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Log in"

        click_link "RSpec tutorial"
        check "Finish RSpec tutorial"

        expect(page).to have_css "label#task_#{task.id}.completed"
        expect(task.reload).to be_completed
        
        uncheck "Finish RSpec tutorial"
        
        expect(page).to_not have_css "label#task_#{task.id}.completed"
        expect(task.reload).to_not be_completed
    end
end
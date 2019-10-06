require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
    
    describe 'GET #index' do
      it "renders the :index template" do
        expect(response).to render_template :index
      end
    end

end

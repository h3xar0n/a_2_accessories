require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:admin) }
  let(:product) { FactoryGirl.create(:product) }
  
  describe 'GET new product' do
    context 'Non-admin user is logged in' do
      before do
        sign_in user
      end
      it 'non-admin user cannot delete product' do
        delete :destroy, params: {id: product.id}
        expect(response).to have_http_status(302)
      end
      it 'non-admin user cannot create product' do
        get :new
        expect(response).to have_http_status(302)
      end
      it 'non-admin user cannot update product' do
        get :edit, params: {id: product.id}
        expect(response).to have_http_status(302)
      end
    end

    context 'Admin is logged in' do
      before do
        sign_in admin
      end
      it 'admin can delete product' do
        delete :destroy, params: {id: product.id}
        expect(response).to redirect_to(products_path)
      end
      it 'admin can create product' do
        get :new
        expect(response).to have_http_status(200)
      end
      it 'admin can update product' do
        get :edit, params: {id: product.id}
        expect(response).to have_http_status(200)
      end
    end
    
  end
end


require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  xcontext 'when admin is logged in' do
    before(:each) do
      @request.session[:logged_in] = true
    end

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  xcontext 'when admins is not logged in'

end

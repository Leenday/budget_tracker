RSpec.describe Web::SessionsController do
  describe 'GET new' do
    it 'return 200 status code' do
      get :new
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST create' do
    it 'redirecting after creating session' do
      create :user
      post :create, params: { session_form: { password: 'pass', login: 'login' } }
      expect(response).should redirect_to(controller: :incomes, action: :index)
    end
  end
end

RSpec.describe "User creation flow", type: :request do
  describe "GET /sign-up" do
    it "returns http success" do
      get "/sign-up"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /new-password" do
    it "returns http success" do
      post "/save-email", params: { "user": { "email": "user@example.com" } }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET /new-password" do
    let(:user) { create(:user) }

    before do
      allow_any_instance_of(ActionDispatch::Request::Session)
        .to receive(:[]).with(:email).and_return(user.email)
    end

    it "returns http success" do
      get "/new-password"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /users" do
    let(:user_params) do
      {
        user: {
          email: "user@example.com",
          password: "password1234",
          password_confirmation: "password1234"
        }
      }
    end
    it "returns http success" do
      expect {
        post "/users", params: user_params
      }.to change(User, :count).by(1)
      expect(response).to have_http_status(:redirect)
    end
  end
end

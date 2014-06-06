require 'spec_helper'

describe "index controller" do
  context "root path" do
    it "renders the index erb" do
      get "/"
      expect(last_response.body).to include "DoppelTwit"
    end
  end

  context "/account/create" do
  let(:valid_params) {{name: "Allison", username: "pinkarrison", email: "allison@example.com", password: "allison"}}
    it "creates a post and redirects with valid params" do
      expect {
         post '/account/create', :post => valid_params
         }.to_change {User.count }.by 1
         expect(last_response).to be_redirect
    end

    it "creates a post and redirects with valid params" do
       expect {
       post  '/posts'
       }.to_not change {Post.count }
      expect(last_response).to be_redirect
    end
  end
end
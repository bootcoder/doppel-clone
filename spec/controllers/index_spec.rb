require 'spec_helper'

describe "index controller" do
  context "root path" do
    it "renders the index erb" do
      get "/"
      expect(last_response.body).to include "DoppelTwit"
    end
  end

  # context "/posts" do
  # let(:valid_params) {{title: "my_title", body: "my_body"}}
  #   it "creates a post and redirects with valid params" do
  #     expect {
  #        post '/posts', :post => valid_params
  #        }.to_change {Post.count }.by 1
  #        expect(last_response).to be_redirect
  #   end

  #   it "creates a post and redirects with valid params" do
  #      expect {
  #      post  '/posts'
  #      }.to_not change {Post.count }
  #     expect(last_response).to be_redirect
  #   end
  # end
end
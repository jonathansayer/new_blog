require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    it "repsonds successfully with a HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the articles into @articles" do
      article1, article2 = Article.create!, Article.create!
      get :index
      expect(assigns(:articles)).to match_array([article1, article2])
    end
  end
end

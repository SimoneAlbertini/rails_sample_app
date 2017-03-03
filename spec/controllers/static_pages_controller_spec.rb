require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "get #home" do
    it "responds 200 OK" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should render home erb template" do
      get :home
      expect(response).to render_template("home")
    end
  end
end

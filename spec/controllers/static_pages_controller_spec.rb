require 'rails_helper'
require_relative 'controller_test_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "get #home" do
    it_should_be_http_ok :home
    it_should_render_correct_template :home
  end

  describe "get #help" do
    it_should_be_http_ok :help
    it_should_render_correct_template :help
  end

  describe "get #about" do
    it_should_be_http_ok :about
    it_should_render_correct_template :about
  end
end

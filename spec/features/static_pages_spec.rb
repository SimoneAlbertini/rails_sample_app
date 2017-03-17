require 'rails_helper'

RSpec.feature 'Static Pages', type: :feature do
 feature 'static pages have correct titles' do

   before :each do
     @base_title = ' | Ruby on Rails Tutorial Sample App'
   end

   scenario 'home page' do
     visit static_pages_home_path
     expect(page).to have_title("Home #{@base_title}")
   end

   scenario 'about page' do
     visit static_pages_about_path
     expect(page).to have_title("About #{@base_title}")
   end

   scenario 'help page' do
     visit static_pages_help_path
     expect(page).to have_title("Help #{@base_title}")
   end
 end
end

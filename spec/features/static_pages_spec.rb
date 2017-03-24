require 'rails_helper'

RSpec.feature 'Static Pages', type: :feature do
 feature 'static pages have correct titles' do

   def title_of_content
     first('h1')
   end

   before :each do
     @base_title = ' | Ruby on Rails Tutorial Sample App'
   end

   scenario 'home page' do
     visit root_path
     expect(page).to have_title("Home #{@base_title}")
     expect(title_of_content).to have_text('Sample App')
   end

   scenario 'about page' do
     visit static_pages_about_path
     expect(page).to have_title("About #{@base_title}")
     expect(title_of_content).to have_text('About')
   end

   scenario 'help page' do
     visit static_pages_help_path
     expect(page).to have_title("Help #{@base_title}")
     expect(title_of_content).to have_text('Help')
   end

   scenario 'contacts page' do
     visit static_pages_contacts_path
     expect(page).to have_title("Contacts #{@base_title}")
     expect(title_of_content).to have_text('Contacts')
   end
 end
end

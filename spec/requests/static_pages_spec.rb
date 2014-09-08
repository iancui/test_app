require 'rails_helper'

RSpec.describe "Static pages", :type => :request do

  let(:basetitle){"Ruby on Rails Tutorial Sample App"}

  subject{page}
  describe "Home page" do
    before {visit root_path}
    #it "should have the content 'Sample App'" do
      #visit root_path
    #  expect(page).to have_content('Sample App')
   # end
   it{should have_content('Sample App')}
   #it{should have_title('#{basetitle} | Home')}
   #it{should have_title("Ruby on Rails Tutorial Sample App")}
   #it{should_not have_title(' | Home')}
   it{should have_title(full_title(''))}

  #it "should have the right title" do
  #visit root_path
 # expect(page).to have_title("#{basetitle} | Home")
#end

  #  it "should have the base title" do
      #visit root_path
   #   expect(page).to have_title("Ruby on Rails Tutorial Sample App")
   # end

#    it "should not have a custom page title" do
#      visit root_path
#      expect(page).not_to have_title('| Home')
#    end
   end
  describe "Help page" do
    before{visit help_path}
    #before{visit 'static_pages/help'}
    it{should have_content('Help')}
    it{should have_title(full_title('Help'))}

    #it "should have the content 'Help'" do
    #  visit help_path
    #  expect(page).to have_content('Help')
    #end

    #    it "should have the title 'Help'" do
    #  visit help_path
    #  expect(page).to have_title("#{basetitle} | Help")
    #end
  end
  describe "About page" do
    before{visit about_path}
    it{should have_content('About Us')}
    it{should have_title(full_title('About Us'))}

    #it "should have the content 'About Us'" do
    #  visit about_path
    #  expect(page).to have_content('About Us')
    #end
    #it "should have the title 'About Us'" do
    #  visit about_path
    #  expect(page).to have_title("#{basetitle} | About Us")
    #end
  end

  describe "Contact page" do 
    before{visit contact_path}
    it{should have_content('Contact')}
    it{should have_selector('h1',text:'Contact')}
    it{should have_title(full_title('Contact'))}
    #it "should have the content 'Contact'" do
    # visit contact_path
    #  expect(page).to have_content('Contact')
    #end
    #it "should have the title 'Contact'" do
    #  visit contact_path
    #  expect(page).to have_title("#{basetitle} | Contact")
    #end
  end
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
end
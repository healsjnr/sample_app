require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
  end
 
  describe "Help" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  end
  
  describe "About" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  end
  

  describe "Titles" do
    it "should present the right title for each page" do 
      titles = %w[Home Help About]
      titles.each do |title|
        visit "/static_pages/#{title.downcase}"
        page.should have_selector('title', :text => title)
      end
    end
  end
end

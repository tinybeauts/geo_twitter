require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
      page.should have_selector('h1', text: "Sample App")
    end

    it "should have the title 'Home'" do
      page.should have_selector('title', text: " | Home")
    end
  end

  describe "Help page" do
    before do 
      visit '/static_pages/help'
    end
    
    it "should have the content 'Help'" do
      page.should have_selector('h1', text: "Help")
    end

    it "should have the title 'Help'" do
      page.should have_selector('title', text: " | Help")
    end
  end

  describe "About page" do
    before do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      page.should have_selector('h1', text: "About Us")
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title', text: " | About Us")
    end
  end
end

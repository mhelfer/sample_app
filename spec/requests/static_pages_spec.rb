require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Home'" do
      visit '/pages/home'
      page.should have_selector('h1', :text => 'Home')
    end
    
    it "should have base title" do
      visit '/pages/home'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Sample App");
    end

    it "should not have the title 'Home'" do
      visit '/pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have base title" do
      visit '/pages/contact'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Sample App");
    end

    it "should have the title 'Contact'" do
      visit '/pages/contact'
      page.should have_selector('title', :text => "| Contact")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "should have base title" do
      visit '/pages/about'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Sample App");
    end

    it "should have the title 'About'" do
      visit '/pages/about'
      page.should have_selector('title', :text => "| About")
    end
  end
  
  describe "Help page" do
    
    it "should have the h1 'Help'" do
      visit '/pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have base title" do
      visit '/pages/help'
      page.should have_selector('title',
          :text => "Ruby on Rails Tutorial Sample App");
    end
    
    it "should have the title 'Help'" do
      visit '/pages/help'
      page.should have_selector('title', :text => "| Help")
    end
  end
end
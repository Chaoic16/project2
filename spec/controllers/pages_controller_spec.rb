require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    render_views
    
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have selector("title", :content => "Ruby on Rails Sample App | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have selector("title", :content => "Ruby on Rails Sample App | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have selector("title", :content => "Ruby on Rails Sample App | About")
    end
  end
end

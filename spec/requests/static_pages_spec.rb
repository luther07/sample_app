require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: "#{base_title}") }
    it { should_not have_selector('title', text: "#{base_title} | Home") }
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do
      visit help_path
      page.should have_selector('title',
                                text: "#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      visit about_path
      page.should have_selector('title',
                                text: "#{base_title} | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact Us')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title',
                                text: "#{base_title} | Contact Us")
    end
  end

  describe "David David Heinemeier Hansson page" do

    it "should have the content 'Who is David Heinemeier Hansson?'" do
      visit dhh_path
      page.should have_selector('h1', 
                                text: 'Who is David Heinemeier Hansson?')
    end

    it "should have the right title" do
      visit dhh_path
      page.should have_selector('title',
                                text: "#{base_title} | DHH")
    end
  end
end

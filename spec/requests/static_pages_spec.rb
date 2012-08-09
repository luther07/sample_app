require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About')) }
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

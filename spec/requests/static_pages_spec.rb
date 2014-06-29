require 'spec_helper'

describe "Static pages" do

	
	describe "Home page" do

		it "should have the content 'Healthy Corps'" do
			visit '/static_pages/home'
			expect(page).to have_selector('h1', :text => 'Healthy Corps')
		end
        
         it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', 
				     :text => "Health and Wellness Application | Home" )
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_selector('h1', :text => 'Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', 
				     :text => "Health and Wellness Application | Help" )
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_selector('h1', :text => 'About Us')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', 
				    :text => "Health and Wellness Application | About Us" )
		end
	end
end

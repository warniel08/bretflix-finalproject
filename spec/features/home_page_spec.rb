require 'rails_helper'

RSpec.feature "visiting the Welcome Page", type: :feature do
  scenario "User visits welcome page and sees 'Welcome to BretFlix' on the page" do
    visit "/"

    expect(page).to have_text("Welcome to BretFlix")
  end

  scenario "User vists welcome page and clicks button to view movies index" do
    visit "/"

    click_button "View the Entire Collection"

    expect(page).to have_text("List of Movies")
  end
end

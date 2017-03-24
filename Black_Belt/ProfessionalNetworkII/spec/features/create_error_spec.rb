require 'rails_helper'
feature "catch invalid information being added" do
  scenario "displays an error message if forms are not filled properly" do
      visit "/"
      fill_in "name", with: "Nishant"
      click_button "Create"
    expect(page).to have_content "Password can't be blank"
  end
end

require 'rails_helper'
feature "view user information" do
  scenario "displays the user information" do
      visit "/"
      fill_in "name", with: "NewUser"
      fill_in "new_email", with: "new@email.com"
      fill_in "new_password", with: "Test1234"
      fill_in "password_confirmation", with: "Test1234"
      fill_in "description", with: "My name is New User"
      click_button "Create"
    expect(page).to have_content "NewUser"
  end
end

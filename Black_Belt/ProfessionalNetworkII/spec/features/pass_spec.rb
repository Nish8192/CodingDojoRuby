require 'rails_helper'
feature "display error if pw not strong" do
  scenario "display invalid password" do
      visit "/"
      fill_in "name", with: "NewUser"
      fill_in "new_email", with: "new@email.com"
      fill_in "new_password", with: "test1234"
      fill_in "password_confirmation", with: "test1234"
      fill_in "description", with: "My name is New User"
      click_button "Create"
    expect(page).to have_content "Password is invalid"
  end
end

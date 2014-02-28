require 'spec_helper'

describe "a user can sign up for an account" do
  let(:user) { FactoryGirl.build(:user) }

  it "can create an account" do
    visit "/"
    click_link "Sign Up"
    fill_in "Username", with: user.username
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    # save_and_open_page
    click_button "Create Account"

    expect(page).to have_content user.username
  end
end

describe "user can log in and log out" do
  let(:user) { FactoryGirl.create(:user) }

  it "can log in and log out" do
    visit root_path
    click_link "Sign In"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Sign In"

    expect(page).to have_content user.username

    click_link "Log Out"
    expect page.to have_content "Sign In"
    expect page.to have_content "Add Article"
    
  end


  
  

end
require 'spec_helper'

describe "a user can sign up for an account" do
  
  it "can create an account" do
    visit "/"
    click_link "Sign Up"
    fill_in :username, with: "steve"
    fill_in :email, with: "steve@gmail.com"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"
    click_button "Create Account"

    expect(page).to have_content("steve")
  end

end
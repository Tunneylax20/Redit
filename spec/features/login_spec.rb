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
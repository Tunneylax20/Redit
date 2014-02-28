require 'spec_helper'

describe "a user can submit an article" do 
  # let(:article) { FactoryGirl.build(:article) }
  let(:article) { Article.new(url: "http://www.google.com") }
  let(:user) { FactoryGirl.create(:user) }

  it "a user can submit an article" do

    visit "/login"
    click_link "Sign In"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Sign In"

    click_link "Red.it"
    click_link "Add Article"
    fill_in "Url", with: article.url
    expect(page).to have_content "Submit an article"

    fill_in "Url", with: article.url
    click_button "Submit Article"
    expect(page).to have_content article.title
    expect(page).to have_content "Add Article"

  end
end
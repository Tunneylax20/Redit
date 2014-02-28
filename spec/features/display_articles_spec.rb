require 'spec_helper'

describe "a user can sign up for an account" do
  let(:user) { FactoryGirl.build(:user) }
  let!(:article1) { FactoryGirl.create(:article) }
  let!(:article2) { FactoryGirl.create(:article) }

  it "lists the articles on the homepage" do
    visit "/"
    click_link article1.title
    expect(page).to have_content article1.created_at
    expect(page).to have_content article1.user.username

    click_link article1.user.username
    expect(page).to have_content article1.user.username
    expect(page).to have_content article1.user.email
    expect(page).to have_content article1.title

  end

end
require 'spec_helper'

describe "a user can sign up for an account" do
  let(:user) { FactoryGirl.build(:user) }
  let(:article1) { FactoryGirl.build(:article) }
  let(:article2) { FactoryGirl.build(:article) }

  it "lists the articles on the homepage" do
    visit "/"
    click_link article1.title
    click_link article2.title
    expect(page).to have_content article1.created_at

  end

end
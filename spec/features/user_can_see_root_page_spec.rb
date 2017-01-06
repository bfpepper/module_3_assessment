require "rails_helper"

describe "User can visit root page" do
  it "can resolve the root page" do

    visit root_path

    expect(page).to have_content('Items')
  end
end

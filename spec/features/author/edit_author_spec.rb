require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render without error" do
    visit authors_path
    expect(page).to have_link('Edit')
    save_and_open_page
  end
end

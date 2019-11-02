require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render without error" do
    visit edit_author_path
  end
end

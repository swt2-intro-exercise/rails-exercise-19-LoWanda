require 'rails_helper'

describe "Show Paper page", type: :feature do 
  it "should display the author's full name" do
    paper = create(:paper)
    author = create(:author)
    visit paper_path(paper)
    expect(page).to have_text(author.name)
  end
end
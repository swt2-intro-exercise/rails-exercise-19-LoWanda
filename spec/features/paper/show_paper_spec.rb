require 'rails_helper'

describe "Show Paper page", type: :feature do 
  it "should display the author's full name" do
    author = create(:author)
    paper = create(:paper)
    visit paper_path(paper)
    expect(page).to have_text(paper.authors.name)
  end
end
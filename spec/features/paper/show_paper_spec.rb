require 'rails_helper'

describe "Show Paper page", type: :feature do 
  it "should display the author's full name" do
    paper = create(:paper)
    author = create(:author)
    paper.authors << Author.new(
    	first_name: author.first_name, 
    	last_name: author.last_name,
    	homepage: author.homepage)
    visit paper_path(paper)
    expect(page).to have_text(paper.authors.first.name)
  end
end
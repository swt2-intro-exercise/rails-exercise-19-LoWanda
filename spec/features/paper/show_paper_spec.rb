require 'rails_helper'

describe "Show Paper page", type: :feature do 

  before :each do
  	@author = create(:author)
    @paper = create(:paper)
    visit paper_path(@paper)
  end

  it "should display the author's full name" do
    expect(page).to have_text(@paper.authors.name)
  end

   it "should have values matching the paper" do
    expect(page).to have_text(@paper.title)
    expect(page).to have_text(@paper.venue)
    expect(page).to have_text(@paper.year)
  end

  it "should have a link for editing, a link for deleting and a link for going back" do 
    expect(page).to have_link 'Edit', href: edit_paper_path(@paper)
    expect(page).to have_link 'Delete', href: paper_path(@paper)
    expect(page).to have_link 'Back', href: papers_path
  end
end
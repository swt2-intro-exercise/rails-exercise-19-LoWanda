require 'rails_helper'

describe "Edit Paper page", type: :feature do 
  it "should have a single multiple select box" do
    paper = create(:paper)
    visit edit_paper_path(paper)
    expect(page).to have_css 'select[multiple]'
  end
end
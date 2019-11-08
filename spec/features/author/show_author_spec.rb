require 'rails_helper'

describe 'Show author page', type: :feature do 

  before :each do
    @author = create(:author)   
    visit author_path(@author)
  end

  it "should have values matching the author" do
    expect(page).to have_text(@author.first_name)
    expect(page).to have_text(@author.last_name)
    expect(page).to have_text(@author.homepage)
  end

  it "should have a link for editing, a link for deleting and a link for going back" do 
    expect(page).to have_link 'Edit', href: edit_author_path(@author)
    expect(page).to have_link 'Delete', href: author_path(@author)
    expect(page).to have_link 'Back', href: authors_path
  end
end

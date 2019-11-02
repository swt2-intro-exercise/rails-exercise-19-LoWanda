require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render without error" do
    visit authors_path
  end

  it "should have a table with the headings 'Name' and 'Homepage'" do 
    visit authors_path
    expect(page).to have_table '#index_author_table'
    expect(index_author_table).to have_header 'Name'
    expect(index_author_table).to have_header 'Homepage'
  end

  it "should link to the individual author's detail page" do 
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(author)
  end

  it "should contain a link to add new authors" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end



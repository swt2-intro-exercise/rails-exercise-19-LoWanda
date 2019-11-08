require 'rails_helper'

describe "Author index page", type: :feature do

  before :each do
    @author = create(:author)   
    visit authors_path 
  end

  it "should render without error" do
  end

  it "should have a table with the headings 'Name' and 'Homepage'" do 
    expect(page).to have_table ''
    within 'table' do 
      expect(page).to have_text 'Name'
      expect(page).to have_text 'Homepage'
    end
  end

  it "should link to the individual author's detail page" do 
    expect(page).to have_link 'Show', href: author_path(@author)
  end

  it "should contain a link to add new authors" do
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a link to delete an author" do
    counter = Author.count
    click_link 'Delete'
    expect(counter).to eq(Author.count + 1)
  end
end

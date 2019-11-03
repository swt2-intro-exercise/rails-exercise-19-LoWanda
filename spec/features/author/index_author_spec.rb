require 'rails_helper'

describe "Author index page", type: :feature do

  before :each do
    Author.create(
      first_name: 'Alan', 
      last_name: 'Turing', 
      homepage: 'http://wikipedia.org/Alan_Turing')
  end

  it "should render without error" do
    visit authors_path
  end

  it "should have a table with the headings 'Name' and 'Homepage'" do 
    visit authors_path
    expect(page).to have_table ''
    within 'table' do 
      expect(page).to have_text 'Name'
      expect(page).to have_text 'Homepage'
    end
  end

  it "should link to the individual author's detail page" do 
    visit authors_path
    expect(page).to have_text 'Show'
  end

  it "should contain a link to add new authors" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should have a link to delete an author" do
    visit authors_path
    counter = Author.count
    click_link 'Delete'
    expect(counter).to eq(Author.count + 1)
  end
end

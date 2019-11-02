require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render without error" do
	Author.create(
	    first_name: 'Alan', 
	    last_name: 'Turing', 
	    homepage: 'http://wikipedia.org/Alan_Turing')
    visit 'authors/1/edit'
  end

  it "should update the author after editing" do 
  	author = Author.create(
	    first_name: 'Alan', 
	    last_name: 'Turing', 
	    homepage: 'http://wikipedia.org/Alan_Turing')
    visit 'authors/1/edit'
    fill_in('author[first_name]', with: 'Lara')
    click_button('Update Author')
    author.reload
    expect(author.name).to eq('Lara Turing')
  end
end

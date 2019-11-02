require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render without error" do
	Author.create(
	    first_name: 'Alan', 
	    last_name: 'Turing', 
	    homepage: 'http://wikipedia.org/Alan_Turing')
    visit 'authors/1/edit'
  end
end

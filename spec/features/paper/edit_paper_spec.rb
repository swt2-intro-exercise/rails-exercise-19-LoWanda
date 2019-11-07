require 'rails_helper'

describe "Edit Paper page", type: :feature do 
  
  before :each do
    @paper = create(:paper)   
  end

  it "should have a single multiple select box" do
    visit edit_paper_path(@paper)
    expect(page).to have_css 'select[multiple]'
  end

  it "should update the paper after adding another author" do 
  	@author = Author.create(
  		first_name: 'Peter',
  		last_name: 'Plagiarist',
  		homepage: 'homepage')
  	visit edit_paper_path(@paper)
    select @author.name, from: 'paper[author_ids][]'
    click_button 'Update Paper'
    @paper.reload
    expect(page).to have_text(@author.name)
    expect(page).to have_text('Alan Turing')
  end
end
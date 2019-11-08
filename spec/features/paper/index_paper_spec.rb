require 'rails_helper'

describe "Index Paper Page", type: :feature do

  it "should allow filtering papers by year" do
  	paper1 = Paper.create(
  		title: 'title',
  		venue: 'venue',
  		year: '1950')
  	paper2 = Paper.create(
  		title: 'title',
  		venue: 'venue',
  		year: '1968')
  	visit '/papers?year=1950'
  	expect(page).to have_text('1950')
  	expect(page).to have_no_text('1968')
  end
  
end
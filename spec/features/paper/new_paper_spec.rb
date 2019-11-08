require 'rails_helper'

describe "New paper page", type: :feature do
  
  before :each do
    visit new_paper_path
  end

  it "should display 'error' when a user tries to create an invalid object" do
    fill_in('paper[title]', with: 'COMPUTING MACHINERY AND INTELLIGENCE')
    fill_in('paper[venue]', with: 'Mind 49: 433-460')
    click_button('Create Paper')
    expect(page).to have_text 'error'
  end

  it "should display 'error' when the year is not a numeric value" do
    fill_in('paper[title]', with: 'COMPUTING MACHINERY AND INTELLIGENCE')
    fill_in('paper[venue]', with: 'Mind 49: 433-460')
    fill_in('paper[year]', with: 'nineteen-fifty')
    click_button('Create Paper')
    expect(page).to have_text 'error'
  end
end

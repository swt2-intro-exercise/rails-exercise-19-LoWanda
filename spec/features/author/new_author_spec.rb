require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render without error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should display 'error' when a user tries to create an invalid object" do
    visit new_author_path
    fill_in('author[first_name]', with: 'Alan')
    fill_in('author[last_name]', with: 'Turing')
    click_button('Save Author')
    expect(page).to have_text 'error'
  end
end

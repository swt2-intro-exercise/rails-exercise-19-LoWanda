require 'rails_helper'

describe "Author edit page", type: :feature do

  before :each do
    @author = create(:author)   
  end

  it "should render without error" do
    visit 'authors/1/edit'
  end

  it "should update the author after editing" do 
    visit 'authors/1/edit'
    fill_in('author[first_name]', with: 'Lara')
    click_button('Update Author')
    @author.reload
    expect(@author.name).to eq('Lara Turing')
  end
end

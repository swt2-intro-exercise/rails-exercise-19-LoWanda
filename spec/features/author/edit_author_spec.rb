require 'rails_helper'

describe "Author edit page", type: :feature do

  before :each do
    @author = create(:author)   
    visit edit_author_path(@author)
  end

  it "should update the author after editing" do 
    fill_in('author[first_name]', with: 'Lara')
    click_button('Update Author')
    @author.reload
    expect(@author.name).to eq('Lara Turing')
  end
end

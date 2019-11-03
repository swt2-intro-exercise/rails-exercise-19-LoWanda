require 'rails_helper'

describe Paper, type: :model do

  it "should have the correct title, venue and year" do
  	paper = create(:paper)
    expect(paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(paper.venue).to eq('Mind 49: 433-460')
    expect(paper.year).to eq(1950)
  end

  it "should have an empty list of authors" do
    paper = create(:paper)
    expect(paper.authors).to eq([])
  end
end

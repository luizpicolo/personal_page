require 'rails_helper'

RSpec.describe Category, :type => :model do
  it 'should be invalid if there is no name' do
    category = FactoryGirl.build :category, :name => nil
    expect(category).to be_invalid
  end

  it "object created is valid" do
    category = FactoryGirl.build(:category)
    expect(category).to be_valid
  end
end

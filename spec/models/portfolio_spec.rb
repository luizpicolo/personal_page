require 'rails_helper'

RSpec.describe Portfolio, :type => :model do
  it 'should be invalid if there is no title' do
    portfolio = FactoryGirl.build :portfolio, :title => nil
    expect(portfolio).to be_invalid
  end

  it 'should be invalid if there is no link' do
    portfolio = FactoryGirl.build :portfolio, :link => nil
    expect(portfolio).to be_invalid
  end

  it "object created is valid" do
    portfolio = FactoryGirl.build(:portfolio)
    expect(portfolio).to be_valid
  end
end

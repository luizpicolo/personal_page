require 'rails_helper'

RSpec.describe About, :type => :model do
  it 'should be invalid if there is no title' do
    about = FactoryGirl.build :about, :title => nil
    expect(about).to be_invalid
  end

  it 'should be invalid if there is no body' do
    about = FactoryGirl.build :about, :body => nil
    expect(about).to be_invalid
  end

  it "object created is valid" do
    about = FactoryGirl.build(:about)
    expect(about).to be_valid
  end
end

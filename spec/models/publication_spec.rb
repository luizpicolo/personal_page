require 'rails_helper'

RSpec.describe Publication, :type => :model do
  it 'should be invalid if there is no title' do
    publication = FactoryGirl.build :publication, :title => nil
    expect(publication).to be_invalid
  end

  it 'should be invalid if there is no date_publish' do
    publication = FactoryGirl.build :publication, :date_publish => nil
    expect(publication).to be_invalid
  end

  it 'should be invalid if there is no description' do
    publication = FactoryGirl.build :publication, :description => nil
    expect(publication).to be_invalid
  end

  it 'should be invalid if there is no arquive' do
    publication = FactoryGirl.build :publication, :arquive => nil
    expect(publication).to be_invalid
  end

  it "object created is valid" do
    publication = FactoryGirl.build(:publication)
    expect(publication).to be_valid
  end
end

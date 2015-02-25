require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it 'should be invalid if there is no title' do
    contact = FactoryGirl.build :contact, :title => nil
    expect(contact).to be_invalid
  end

  it 'should be invalid if there is no link' do
    contact = FactoryGirl.build :contact, :link => nil
    expect(contact).to be_invalid
  end

  it "object created is valid" do
    contact = FactoryGirl.build(:contact)
    expect(contact).to be_valid
  end
end

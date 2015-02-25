require 'rails_helper'

RSpec.describe ArticleAttachment, :type => :model do
  it 'should be invalid if there is no title' do
    article_attachment = FactoryGirl.build :article_attachment, :title => nil
    expect(article_attachment).to be_invalid
  end

  it 'should be invalid if there is no title' do
    article_attachment = FactoryGirl.build :article_attachment, :image => nil
    expect(article_attachment).to be_invalid
  end

  it "object created is valid" do
    article_attachment = FactoryGirl.build(:article_attachment)
    expect(article_attachment).to be_valid
  end
end

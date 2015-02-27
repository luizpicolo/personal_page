require 'rails_helper'

RSpec.describe Article, :type => :model do
  it 'should be invalid if there is no title' do
    article = FactoryGirl.build :article, :title => nil
    expect(article).to be_invalid
  end

  it 'should be invalid if there is no summary' do
    article = FactoryGirl.build :article, :summary => nil
    expect(article).to be_invalid
  end

  it 'should be invalid if there is no date publish' do
    article = FactoryGirl.build :article, :date_publish => nil
    expect(article).to be_invalid
  end

  it 'should be invalid if there is no body' do
    article = FactoryGirl.build :article, :body => nil
    expect(article).to be_invalid
  end

  it "object created is valid" do
    article = FactoryGirl.build(:article)
    expect(article).to be_valid
  end

  describe "association" do
    it { should have_many(:article_attachments) }
    it { should have_and_belong_to_many(:categories) }
  end

  describe "nested attributes" do
    it { should accept_nested_attributes_for(:article_attachments) }
  end

  describe "#markdown" do
    it "should have a text in the format html '<strong>text</strong>'" do
      article = FactoryGirl.build :article, :body => "loren ipsun **text** loren ipsun"
      expect(article.markdown).to include("<strong>text</strong>")
    end

    it "should have a text in the format html '<em>text</em>'" do
      article = FactoryGirl.build :article, :body => "loren ipsun *text* loren ipsun"
      expect(article.markdown).to include("<em>text</em>")
    end
  end

  describe "#link_article" do
    it "should return valid link to article" do
      article = FactoryGirl.create :article, :title => "loren ipsun", :date_publish => "20/10/2015"
      expect(article.link_article).to eq("/2015/10/20/loren-ipsun")
    end
  end
end

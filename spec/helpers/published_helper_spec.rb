require 'rails_helper'

RSpec.describe DateHelper, :type => :helper do
  describe "#updated_at" do
    it 'should return date in format defined' do
      article = FactoryGirl.create(:article, :updated_at => "20/10/2015")
      expect(article.updated_in).to eq("20 de Outubro de 2015")
    end
  end

  describe "#published_in" do
    it 'should return date in format defined' do
      article = FactoryGirl.create(:article, :date_publish => "20/10/2015")
      expect(article.published_in).to eq("20 de Outubro de 2015")
    end
  end
end

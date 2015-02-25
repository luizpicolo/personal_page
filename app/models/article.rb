class Article < ActiveRecord::Base
  include DateHelper

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :summary, :date_publish, :body, :presence => true

  has_and_belongs_to_many :categories
  has_many :article_attachments, dependent: :destroy

  accepts_nested_attributes_for :article_attachments, :allow_destroy => true
end

# Category model
class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true

  has_and_belongs_to_many :articles
end

# Attachemnts model
class ArticleAttachment < ActiveRecord::Base
  validates :title, :image, presence: true

  mount_uploader :image, ImageUploader
end

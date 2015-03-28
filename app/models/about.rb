# About model
class About < ActiveRecord::Base
  include DateHelper

  validates :title, :body, presence: true
  mount_uploader :image, AboutUploader
end

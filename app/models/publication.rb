# Model publication
class Publication < ActiveRecord::Base
  include DateHelper

  validates :title, :date_publish, :description, :arquive, presence: true
  mount_uploader :arquive, ArquiveUploader
end

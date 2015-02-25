class Contact < ActiveRecord::Base
  validates :title, :link, :presence => true
end

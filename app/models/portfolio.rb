class Portfolio < ActiveRecord::Base
  include DateHelper

  validates :title, :link, :presence => true
end

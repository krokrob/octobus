class Center < ActiveRecord::Base
  belongs_to :boss
  has_many :codes

  validates_presence_of :location
end

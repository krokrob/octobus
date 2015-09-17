class Code < ActiveRecord::Base
  belongs_to :center
  belongs_to :language

  validates_presence_of :quantity, :unit_price
end

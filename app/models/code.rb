class Code < ActiveRecord::Base
  belongs_to :center
  belongs_to :language
end

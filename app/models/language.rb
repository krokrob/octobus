class Language < ActiveRecord::Base
  has_many :codes

  validates :name, presence: true, inclusion: { in: %w(ruby python php html css javascript jquery reactjs) }
end

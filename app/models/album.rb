class Album < ApplicationRecord
  belongs_to :band
 has_one_attached :cover
  validate :name
end

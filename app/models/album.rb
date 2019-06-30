class Album < ApplicationRecord
  belongs_to :band
 validate :name 
end

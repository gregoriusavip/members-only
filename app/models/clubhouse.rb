class Clubhouse < ApplicationRecord
  validates :club_name, presence: true
  has_many :users
end

class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  has_many :posts
  belongs_to :clubhouse
end

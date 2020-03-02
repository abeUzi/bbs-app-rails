class Forum < ApplicationRecord
  has_many :category_forums
  has_many :category, through: :category_forums
  has_many :responses
  belongs_to :user
end

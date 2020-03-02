class Forum < ApplicationRecord
  has_many :category_forums
  has_many :categories, through: :category_forums
  has_many :responses
  belongs_to :user
  accepts_nested_attributes_for :responses
end

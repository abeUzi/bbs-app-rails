class Category < ApplicationRecord
  has_many :category_forums
  has_many :forums, through: :category_forums
end

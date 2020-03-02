class CategoryForum < ApplicationRecord
  belongs_to :category
  belongs_to :forum
end

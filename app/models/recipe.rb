class Recipe < ApplicationRecord
  has_many :items
  has_and_belongs_to_many :recipe_lists
end

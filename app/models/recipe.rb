class Recipe < ApplicationRecord
  has_many :ingredients
  has_and_belongs_to_many :recipe_lists
end

class RecipeList < ApplicationRecord
  has_and_belongs_to_many :recipes
  has_many :items, through: :recipes
end

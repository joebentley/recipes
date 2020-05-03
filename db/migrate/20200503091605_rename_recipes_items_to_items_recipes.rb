class RenameRecipesItemsToItemsRecipes < ActiveRecord::Migration[6.0]
  def change
    rename_table :recipes_items, :items_recipes
  end
end

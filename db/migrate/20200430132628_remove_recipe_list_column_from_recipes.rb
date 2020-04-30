class RemoveRecipeListColumnFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :recipe_list_id
  end
end

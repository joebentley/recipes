class AddRecipeListsRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_lists_recipes, :id => false do |t|
      t.integer :recipe_list_id
      t.integer :recipe_id
    end
  end
end

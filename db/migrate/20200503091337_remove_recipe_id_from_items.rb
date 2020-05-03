class RemoveRecipeIdFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :recipe_id
  end
end

class RenameIngredientsToItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :ingredients, :items
  end
end

class AddRecipesItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes_items, :id => false do |t|
      t.integer :recipe_id
      t.integer :item_id
    end
  end
end

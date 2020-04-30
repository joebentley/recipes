class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :recipe_list, foreign_key: true

      t.timestamps
    end
  end
end

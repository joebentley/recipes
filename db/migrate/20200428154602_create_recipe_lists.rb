class CreateRecipeLists < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end

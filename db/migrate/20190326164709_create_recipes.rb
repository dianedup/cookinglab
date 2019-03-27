class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :photo
      t.string :title
      t.string :subtitle
      t.string :description
      t.string :prep_time
      t.string :cook_time
      t.string :rest_time
      t.string :kind
      t.boolean :published, default: false
      t.references :user, foreign_key: true
      t.bigint :original_recipe_id

      t.timestamps
    end
    add_foreign_key :recipes, :recipes, column: :original_recipe_id
    add_index :recipes, :original_recipe_id
  end
end

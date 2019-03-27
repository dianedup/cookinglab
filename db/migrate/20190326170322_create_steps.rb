class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.text :content
      t.integer :position, default: 1
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end

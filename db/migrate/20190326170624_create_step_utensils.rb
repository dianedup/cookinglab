class CreateStepUtensils < ActiveRecord::Migration[5.2]
  def change
    create_table :step_utensils do |t|
      t.references :step, foreign_key: true
      t.references :utensil, foreign_key: true

      t.timestamps
    end
  end
end

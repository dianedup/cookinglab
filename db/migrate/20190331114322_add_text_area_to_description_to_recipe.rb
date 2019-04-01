class AddTextAreaToDescriptionToRecipe < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :description, :text
  end
end

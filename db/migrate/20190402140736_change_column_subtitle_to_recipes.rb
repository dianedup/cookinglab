class ChangeColumnSubtitleToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :subtitle, :string, default: 'originale'
  end
end

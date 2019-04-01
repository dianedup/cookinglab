class AddDefaultOnSubtitleToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :subtitle, :string, default: 'original'
  end
end

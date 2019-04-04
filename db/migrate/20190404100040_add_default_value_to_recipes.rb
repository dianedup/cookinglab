class AddDefaultValueToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column_default :recipes, :servings, from: nil, to: 4
  end
end

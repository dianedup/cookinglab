class ChangeColumnPublishedOnToRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :published_on
    add_column :recipes, :published_on, :date
    remove_column :recipes, :kind
    add_column :recipes, :kind, :string, default: 'original'
  end
end

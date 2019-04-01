class AddUpvotePublishedOnServingsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :published_on, :date
    add_column :recipes, :upvote, :integer, default: 0
    add_column :recipes, :servings, :integer
    change_column :recipes, :kind, :string, default: 'original'
  end
end

class AddUpvotePublishedOnServingsToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :published_on, :boolean, default: false
    add_column :recipes, :upvote, :integer, default: 'nil'
    add_column :recipes, :servings, :integer, default: false
  end
end

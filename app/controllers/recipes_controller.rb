class RecipesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
              recipes.title @@ :query \
            "
      @recipes = Recipe.where("recipes.title @@ :query", query: "%#{params[:query].split(' ').join(' OR ')}%")
    else
      @recipes = Recipe.where(kind: "original")
    end
  end
  def show
    @recipe = Recipe.find(1) # TO DELETE WHEN INDEX is RESPONSIVE
  end
end

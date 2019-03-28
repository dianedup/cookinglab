class RecipesController < ApplicationController
  
  def index
    if params[:query].present?
      sql_query = " \
              recipes.title @@ :query \
            "
      @recipes = Recipe.where("recipes.title @@ :query", query: "%#{params[:query].split(' ').join(' OR ')}%")
    else
      @recipes = Recipe.all
    end
  end
  def show
  end
end

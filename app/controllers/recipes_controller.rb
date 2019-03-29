class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    if params[:query].present?
      sql_query = " \
              recipes.title @@ :query \
            "
      @recipes = Recipe.where(kind: "original").
                        where("recipes.title @@ :query", query: "%#{params[:query].split(' ').join(' OR ')}%")
    else
      @recipes = Recipe.where(kind: "original")
    end
  end
  def show
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end

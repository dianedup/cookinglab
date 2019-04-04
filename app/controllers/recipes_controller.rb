class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index
    if params[:query].present?
      @recipes = Recipe.where(kind: 'original', published: true).global_search(params[:query]).order("published_on DESC")
    else
      @recipes = Recipe.where(kind: 'original', published: true).order("published_on DESC")
    end
  end

  def show
    @doses = @recipe.doses.select("SUM(quantity) AS quantity, unit, ingredient_id").group("unit, ingredient_id")
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end

class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show]

  def index

    if params[:query].present?
      @recipes = Recipe.where(kind: 'original').global_search(params[:query])
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

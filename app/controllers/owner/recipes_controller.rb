class Owner::RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_recipe)
    @recipe.save
  end

  private

  def params_recipe
    params.require(:recipe).permit(:photo, :title, :subtitle, :description, :prep_time, :cook_time, :rest_time, :kind, :published)
  end
end

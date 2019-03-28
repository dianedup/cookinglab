class Owner::RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_recipe)
    @recipe.save
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params_recipe)
    redirect_to owner_recipe_path(@recipe.id)
  end

  private

  def params_recipe
    params.require(:recipe).permit(:photo, :title, :subtitle, :description, :prep_time, :cook_time, :rest_time, :kind, :published)
  end
end

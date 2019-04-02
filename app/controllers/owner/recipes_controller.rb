class Owner::RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params_recipe)
    @recipe.user = current_user
    if @recipe.save
      if params[:recipe][:tags].present? # => ["1", "2", "3"]
        checked_tags = params[:recipe][:tags]
        # pour chaque tag, créer la table de jointure recipe_tags en chopant l'objet Tag
        checked_tags.each do |tag|
          RecipeTag.create(recipe: @recipe, tag: Tag.find(tag))
        end
      end
      redirect_to edit_owner_recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @step = Step.new(recipe: @recipe)
    @dose = Dose.new
    @step_utensil = StepUtensil.new
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update!(params_recipe)
    redirect_to owner_dashboard_path
  end

  def publish
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.published = 'true'
    @recipe.save!
    redirect_to owner_dashboard_path
  end

  private

  def params_recipe
    params.require(:recipe).permit(:photo, :title, :subtitle, :description, :prep_time, :cook_time, :rest_time, :kind, :published)
  end
end

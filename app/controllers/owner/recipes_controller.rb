class Owner::RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update, :destroy]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
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
    if @recipe.user == current_user
      @step = Step.new(recipe: @recipe)
      @dose = Dose.new
      @step_utensil = StepUtensil.new
      @contribution = ChangesProposal.new(recipe: @recipe)
    else
      redirect_to recipes_path
    end
  end

  def update
    if @recipe.user == current_user
      @recipe.update!(recipe_params)

      if params[:recipe][:tags].present? # => ["1", "2", "3"]
        @recipe.recipe_tags.destroy_all

        checked_tags = params[:recipe][:tags]
        checked_tags.each do |tag|
          RecipeTag.create(recipe: @recipe, tag: Tag.find(tag))
        end
      end
      redirect_to edit_owner_recipe_path(@recipe)
    else
      redirect_to recipes_path
    end
  end

  def publish
    @recipe.published = 'true'
    @recipe.published_on = Date.today
    @recipe.save!
    redirect_to owner_dashboard_path
  end

  def destroy
    case @recipe.kind
    when 'original'
      if @recipe.variants.count == 0
        @recipe.destroy!
      else
        flash[:notice] = "Suppression impossible, cette recette possède actuellement des variantes."
      end
    when 'variant'
      @recipe.destroy!
    end
    redirect_to owner_dashboard_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:photo, :title, :subtitle, :description,
                                   :prep_time, :cook_time, :rest_time, :kind, :published, :servings)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end

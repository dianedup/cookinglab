class CopiesController < ApplicationController
  def create
    raise
    # Get original recipe
    @original_recipe = Recipe.find(params[:recipe_id])

    # Create a new Recipe object with targeted details from original recipe:
    @new_variant = Recipe.new(
      @original_recipe.attributes.slice('title', 'prep_time', 'cook_time', 'rest_time')
    )

    # Add to new variant :
    #   - kind = variant
    #   - user = current_user
    #   - original_recipe = @original_recipe given through params
    #   - subtitle = "" (default = 'originale')
    #   - description = ""
    @new_variant.kind = 'variant'
    @new_variant.user = current_user
    @new_variant.original_recipe = @original_recipe
    @new_variant.subtitle = ""
    @new_variant.description = ""

    # Remote upload a photo identical to the one from original:
    #    - photo

    # Create steps:
    #   - linked to new variant
    #   - with the same content as original steps
      # Create step_utensils:
      #   - linked to each new step
      #   - with the same utensil_id as original step_utensil
      # Create doses:
      #   - linked to each new step
      #   - with the same quantity, unit and ingredient_id as original dose

    # Save new recipe
    if @new_variant.save
      redirect_to # Dashboard
    else
      redirect_to recipe_path(@original_recipe)
    end
  end


  private

  def params_variant
    params.permit(:recipe_id)
  end
end

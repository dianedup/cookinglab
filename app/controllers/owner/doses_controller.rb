class Owner::DosesController < ApplicationController
  def new
    @dose = Dose.new
    @step = Step.find(params[:step_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @step = Step.find(params[:step_id])
    @dose.step = @step
    ingredient = params[:dose][:ingredient_id]
    if ingredient.to_i.zero?
      new_ingredient = Ingredient.create!(name: params[:dose][:ingredient_id])
      @dose.ingredient = new_ingredient
    end
    @dose.save!
    redirect_to edit_owner_recipe_path(@step.recipe)
  end

  def update
    @dose = Dose.find(params[:id])
    @recipe = @dose.step.recipe

    if @dose.update(dose_params)
      redirect_to edit_owner_recipe_path(@recipe)
    else
      render 'owner/recipes/edit'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @recipe = @dose.step.recipe
    @dose.destroy
    redirect_to edit_owner_recipe_path(@recipe)
  end

  def dose_params
    params.require(:dose).permit(:quantity, :unit, :ingredient_id)
  end
end

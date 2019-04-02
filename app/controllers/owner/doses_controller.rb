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
    respond_to do |format|
      format.html { redirect_to edit_owner_recipe_path(@step.recipe) }
      format.js
    end
  end

  def update
    @dose = Dose.find(params[:id])
    @recipe = @dose.step.recipe

    if @dose.update(dose_params)
      respond_to do |format|
        format.html { redirect_to edit_owner_recipe_path(@recipe) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'owner/recipes/edit' }
        format.js
      end
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @recipe = @dose.step.recipe
    @dose_id = @dose.id
    if @dose.destroy
      respond_to do |format|
        format.html { redirect_to edit_owner_recipe_path(@recipe) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'owner/recipes/edit' }
        format.js
      end
    end
  end

  def dose_params
    params.require(:dose).permit(:quantity, :unit, :ingredient_id)
  end
end

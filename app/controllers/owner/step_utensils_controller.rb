class Owner::StepUtensilsController < ApplicationController
  def new
    @step_utensil = StepUtensil.new
    @step = Step.find(params[:step_id])
  end

  def create
    @step_utensil = StepUtensil.new(step_utensil_params)
    @step = Step.find(params[:step_id])
    @step_utensil.step = @step
    utensil = params[:step_utensil][:utensil_id]
    if utensil.to_i.zero?
      new_utensil = Utensil.create!(name: params[:step_utensil][:utensil_id])
      @step_utensil.utensil = new_utensil
    end
    @step_utensil.save!
    redirect_to edit_owner_recipe_path(@step.recipe)
  end

  def update
    @step_utensil = StepUtensil.find(params[:id])
    @recipe = @step_utensil.step.recipe

    if @step_utensil.update(step_utensil_params)
      redirect_to edit_owner_recipe_path(@recipe)
    else
      render 'owner/recipes/edit'
    end
  end

  def destroy
    @step_utensil = StepUtensil.find(params[:id])
    @recipe = @step_utensil.step.recipe
    @step_utensil.destroy
    redirect_to edit_owner_recipe_path(@recipe)
  end

  def step_utensil_params
    params.require(:step_utensil).permit(:utensil_id)
  end
end

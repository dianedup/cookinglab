class Owner::StepsController < ApplicationController
  before_action :set_step, only: [:update, :destroy]
  def new
    @step = Step.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @step = Step.new
    @recipe = Recipe.find(params[:recipe_id])
    @step.recipe = @recipe
    if @recipe.steps.empty?
      @step.position = 1
    else
      @step.position = @recipe.steps.count + 1
    end
    @step.save
    redirect_to edit_owner_recipe_path(@recipe)
  end

  def update
    @recipe = @step.recipe
    @step.update(step_params)
    redirect_to edit_owner_recipe_path(@recipe)
  end

  def destroy
    @recipe = @step.recipe
    @step.destroy
    reorder_steps_positions
    redirect_to edit_owner_recipe_path(@recipe)
  end

  private

  def step_params
    params.require(:step).permit(:content, :position)
  end

  def set_step
    @step = Step.find(params[:id])
  end

  def reorder_steps_positions
    i = 1
    @recipe.steps.order(:position).each do |step|
      step.position = i
      step.save
      i += 1
    end
  end
end

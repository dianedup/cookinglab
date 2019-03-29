class Owner::DosesController < ApplicationController
  def update
    @dose = Dose.find(params[:id])
    @recipe = @dose.step.recipe

    if @dose.update(dose_params)
      redirect_to edit_owner_recipe_path(@recipe)
    else
      render 'owner/recipes/edit'
    end
  end

  def dose_params
    params.require(:dose).permit(:quantity, :unit)
  end
end

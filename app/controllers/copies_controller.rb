class CopiesController < ApplicationController
  def create
    @new_variant = ::Recipes::CreateCopyService.new(params[:recipe_id], current_user.id).call

    redirect_to edit_owner_recipe_path(@new_variant)
  end


  private

  def params_variant
    params.permit(:recipe_id)
  end
end

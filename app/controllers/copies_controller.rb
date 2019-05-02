class CopiesController < ApplicationController
  def create
    if params[:recipe_copy_kind].nil?
      @copy = ::Recipes::CreateCopyService.new(params[:recipe_id], current_user.id).call
    else
      @copy = ::Recipes::CreateCopyService.new(params[:recipe_id], current_user.id, params[:recipe_copy_kind]).call
    end

    redirect_to edit_owner_recipe_path(@copy)
  end

  private

  def variant_params
    params.permit(:recipe_id, :recipe_copy_kind)
  end
end

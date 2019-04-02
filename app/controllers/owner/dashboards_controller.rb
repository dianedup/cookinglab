class Owner::DashboardsController < ApplicationController
  def show
    @current_user = current_user
    @recipes = current_user.recipes.order("created_at DESC")
  end
end

class Owner::DashboardController < ApplicationController
  def show
    @current_user = current_user
    @recipes = current_user.recipes
  end
end

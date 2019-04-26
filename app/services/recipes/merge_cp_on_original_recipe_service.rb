module Recipes
  class MergeCpOnOriginalRecipeService

    attr_reader :cp_recipe, :original_recipe, :copy

    def initialize(changes_proposal_recipe_id)
      @cp_recipe        = Recipe.find(changes_proposal_recipe_id)
      @original_recipe  = @cp_recipe.original_recipe
    end

    def call
      # Create a new Recipe object with targeted details from original recipe:
      update_original_recipe

      #Destroy original steps
      original_recipe.steps.destroy_all

      # Create steps:
      #   - with the same content as cp steps
      #   - linked to original recipe
      cp_recipe.steps.each do |cp_step|
        copy_step = create_copy_step(cp_step)

        create_utensils(cp_step, copy_step)
        create_doses(cp_step, copy_step)
      end

      return original_recipe
    end

    private

    def update_original_recipe
      original_recipe.update_attributes(
        cp_recipe.attributes.slice('servings', 'description', 'cook_time', 'rest_time')
      )
    end

    def create_copy_step(cp_step)
      copy_step = Step.new(cp_step.attributes.slice('content', 'position'))
      copy_step.recipe = original_recipe
      copy_step.save!
      return copy_step
    end

    def create_utensils(cp_step, copy_step)
      # Create step_utensils:
      #   - with the same utensil_id as original step_utensil
      #   - linked to each new step
      cp_step.step_utensils.each do |step_utensil|
        new_step_utensil = StepUtensil.new(step_utensil.attributes.slice('utensil_id'))
        new_step_utensil.step = copy_step
        new_step_utensil.save!
      end
    end

    def create_doses(cp_step, copy_step)
      # Create doses:
      #   - with the same quantity, unit and ingredient_id as original dose
      #   - linked to each new step
      cp_step.doses.each do |dose|
        new_dose = Dose.new(dose.attributes.slice('quantity', 'unit', 'ingredient_id'))
        new_dose.step = copy_step
        new_dose.save!
      end
    end
  end
end

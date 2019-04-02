module Recipes
  class CreateVariantService

    attr_reader :original_recipe, :new_variant, :creator

    def initialize(original_recipe_id, creator_id)
      @original_recipe = Recipe.find(original_recipe_id)
      @creator         = User.find(creator_id)
    end

    def call
      # Create a new Recipe object with targeted details from original recipe:
      create_variant

      # Create steps:
      #   - with the same content as original steps
      #   - linked to new variant
      original_recipe.steps.each do |original_step|
        variant_step = create_variant_step(original_step)

        create_utensils(original_step, variant_step)
        create_doses(original_step, variant_step)
      end

      return new_variant
    end

    private

    def create_variant
      @new_variant = Recipe.new(
        original_recipe.attributes.slice('title', 'prep_time', 'cook_time', 'rest_time')
      )

      # Add to new variant :
      #   - kind = variant
      #   - user = current_user
      #   - original_recipe = original_recipe given through params
      #   - subtitle = "" (default = 'originale')
      #   - description = ""
      @new_variant.kind            = 'variant'
      @new_variant.user            = creator
      @new_variant.original_recipe = original_recipe
      @new_variant.subtitle        = ""
      @new_variant.description     = "Proposez votre description"

      # Remote upload a photo identical to the one from original:
      #    - photo
      @new_variant.remote_photo_url = original_recipe.photo.url

      # Save new recipe
      @new_variant.save!
    end

    def create_variant_step(original_step)
      new_variant_step = Step.new(original_step.attributes.slice('content'))
      new_variant_step.recipe = new_variant
      new_variant_step.save!
      return new_variant_step
    end

    def create_utensils(original_step, variant_step)
      # Create step_utensils:
      #   - with the same utensil_id as original step_utensil
      #   - linked to each new step
      original_step.step_utensils.each do |step_utensil|
        new_step_utensil = StepUtensil.new(step_utensil.attributes.slice('utensil_id'))
        new_step_utensil.step = variant_step
        new_step_utensil.save!
      end
    end

    def create_doses(original_step, variant_step)
      # Create doses:
      #   - with the same quantity, unit and ingredient_id as original dose
      #   - linked to each new step
      original_step.doses.each do |dose|
        new_dose = Dose.new(dose.attributes.slice('quantity', 'unit', 'ingredient_id'))
        new_dose.step = variant_step
        new_dose.save!
      end
    end
  end
end

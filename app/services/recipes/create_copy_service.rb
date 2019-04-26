module Recipes
  class CreateCopyService
    attr_reader :original_recipe, :copy, :creator, :recipe_copy_kind

    def initialize(original_recipe_id, creator_id, recipe_copy_kind = "variant")
      @original_recipe  = Recipe.find(original_recipe_id)
      @creator          = User.find(creator_id)
      @recipe_copy_kind = recipe_copy_kind
    end

    def call
      # Create a new Recipe object with targeted details from original recipe:
      create_copy

      # Create steps:
      #   - with the same content as original steps
      #   - linked to new copy
      original_recipe.steps.each do |original_step|
        copy_step = create_copy_step(original_step)

        create_utensils(original_step, copy_step)
        create_doses(original_step, copy_step)
      end

      return copy
    end

    private

    def create_copy
      @copy = Recipe.new(
        original_recipe.attributes.slice('title', 'prep_time', 'cook_time', 'rest_time', 'servings', 'description')
      )

      # Add to new copy :
      #   - kind = copy
      #   - user = current_user
      #   - original_recipe = original_recipe given through params
      #   - subtitle = "" (default = 'originale')
      #   - description = ""
      @copy.kind            = recipe_copy_kind
      @copy.user            = creator
      @copy.original_recipe = original_recipe
      @copy.subtitle        = ""
      @copy.description = "Proposez votre description" if recipe_copy_kind == 'variant' # else keep original description
      original_recipe.tags.each do |tag|
        @copy.tags << tag
      end

      # Remote upload a photo identical to the one from original:
      #    - photo
      @copy.remote_photo_url = original_recipe.photo.url

      # Save new recipe
      @copy.save!
    end

    def create_copy_step(original_step)
      copy_step = Step.new(original_step.attributes.slice('content', 'position'))
      copy_step.recipe = copy
      copy_step.save!
      return copy_step
    end

    def create_utensils(original_step, copy_step)
      # Create step_utensils:
      #   - with the same utensil_id as original step_utensil
      #   - linked to each new step
      original_step.step_utensils.each do |step_utensil|
        new_step_utensil = StepUtensil.new(step_utensil.attributes.slice('utensil_id'))
        new_step_utensil.step = copy_step
        new_step_utensil.save!
      end
    end

    def create_doses(original_step, copy_step)
      # Create doses:
      #   - with the same quantity, unit and ingredient_id as original dose
      #   - linked to each new step
      original_step.doses.each do |dose|
        new_dose = Dose.new(dose.attributes.slice('quantity', 'unit', 'ingredient_id'))
        new_dose.step = copy_step
        new_dose.save!
      end
    end
  end
end

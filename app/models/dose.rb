class Dose < ApplicationRecord
  belongs_to :step
  belongs_to :ingredient
end

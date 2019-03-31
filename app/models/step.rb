class Step < ApplicationRecord
  belongs_to :recipe
  has_many :step_utensils, dependent: :destroy
  has_many :utensils, through: :step_utensils
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end

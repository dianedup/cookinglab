class Utensil < ApplicationRecord
  has_many :step_utensils

  validates :name, presence: true
end

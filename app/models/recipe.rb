class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :original_recipe, class_name: "Recipe", optional: true
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
  has_many :steps
  has_many :changes_proposals
  has_many :variants, -> { where(kind: 'variant') }, class_name: "Recipe", foreign_key: "original_recipe_id", dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true
end

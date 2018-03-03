class Recipe < ActiveRecord::Base
  has_many :ingredients
  validates :ingredients, presence: true
  accepts_nested_attributes_for :ingredients
end

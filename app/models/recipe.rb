class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredient_attributes=(ingredients)
    self.ingredients = Ingredients.find_or_create_by(name: ingredients.name)
    self.ingredients.update(ingredients)
  end
end

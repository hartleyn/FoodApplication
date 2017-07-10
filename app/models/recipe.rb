class Recipe < ApplicationRecord
	has_many :ingredients_recipes
	has_many :ingredients, through: :ingredients_recipes
	#has_many :types
	#has_many :dietaryattributes
	#has_many :comments
end

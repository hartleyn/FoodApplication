class IngredientsRecipesController < ApplicationController
	before_action :set_ingredient
	before_action :set_recipe

	def create
		@recipe_ingredient = @ingredient.recipeingredients.where(recipe_id: @recipe.id).first_or_create
		redirect_to @recipe
	end

	def destroy
		@recipe_ingredient = @ingredient.recipeingredients.where(recipe_id: @recipe.id).destroy_all
		redirect_to recipes_path
	end

	private

		def set_ingredient
			@ingredient = Ingredient.find(params[:ingredient_id])
		end

		def set_recipe
			@recipe = Recipe.find(params[:recipe_id])
		end
end
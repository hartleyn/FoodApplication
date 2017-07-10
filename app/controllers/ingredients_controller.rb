class IngredientsController < ApplicationController
  # GET /recipes
  # GET /recipes.json
  def index
    @ingredients = Ingredient.all
  end 

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
  end


  # GET /chatrooms/1
  # GET /chatrooms/1.json
  def show
    @ingredients = Ingredient.all
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to recipes_path, notice: 'Ingredient was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end

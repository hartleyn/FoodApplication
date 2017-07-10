class CreateIngredientsRecipes < ActiveRecord::Migration[5.0]
  def change
  	add_reference :recipe, :ingredient, index: true
    add_foreign_key :recipe, :ingredint
  	
    create_table :ingredients_recipes do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end

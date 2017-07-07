class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :prep_time
      t.text :instructions
      t.integer :upvotes
      t.integer :downvotes
      t.string :image
      t.belongs_to :user

      t.timestamps
    end
  end
end

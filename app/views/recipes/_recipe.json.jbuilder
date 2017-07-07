json.extract! recipe, :id, :name, :prep_time, :instructions, :upvotes, :downvotes, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

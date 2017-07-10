Rails.application.routes.draw do
  resources :ingredients
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes do
  	resources :ingredients_recipes
  end

  root to: "recipes#index"

  resources :recipes do
    member do
      put :upvote
    end
  end
end

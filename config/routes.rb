Rails.application.routes.draw do
  root 'recipe_lists#index'

  resources :recipe_lists do
    member do
      delete :remove_recipe, path: "remove_recipe/:recipe_id"
    end
  end

  resources :recipes do
    resources :ingredients
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

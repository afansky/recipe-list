Rails.application.routes.draw do
  root 'recipe_models#new'
  resources :recipe_models, :path => 'recipes'
end

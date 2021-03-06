Rails.application.routes.draw do
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  resources :recipe_models, :path => 'recipes', :only => [:new, :show, :create, :update]
end

Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :administrations
  resources :entreprises
  resources :instances
  resources :home
  resources :candidats
  resources :questionnaires
end

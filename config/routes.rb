Rails.application.routes.draw do
  get 'gallery/index'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "gallery#index"
end

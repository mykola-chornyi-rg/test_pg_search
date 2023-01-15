Rails.application.routes.draw do
  resources :characters
  root 'characters#index'
  get 'results', to: 'results#index', as: 'results'
end

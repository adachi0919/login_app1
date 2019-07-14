Rails.application.routes.draw do
  devise_for :users
  root 'comments#index'
  get 'comments/index'
  delete 'comments/:id', to: 'comments#destroy'
end

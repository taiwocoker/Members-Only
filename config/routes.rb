Rails.application.routes.draw do
  devise_for :members
  root 'posts#index'
  resources :posts, only: %i[new create index]
end

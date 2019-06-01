Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  get 'articles' => 'articles#index'
  get 'articles/new' => 'articles#new'
  post 'articles' => 'articles#create'
  delete 'articles/:id' => 'articles#destroy'
  patch 'articles/:id' => 'articles#update'
  get 'users/:id' => 'users#show'
  get 'tweets/:id/edit' => 'tweets#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

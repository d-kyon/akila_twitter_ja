Rails.application.routes.draw do
  devise_for :riyoushas
  root 'twitter#index'
  get 'twitter/index' => 'twitter#index'
  get 'twitter/:id/show' => 'twitter#show'
  get 'twitter/new' => 'twitter#new'
  post 'twitter/create' =>'twitter#create'
  get 'twitter/:id/edit' => 'twitter#edit'
  put 'twitter/:id/update' =>'twitter#update'
  delete 'twitter/:id/destroy' =>'twitter#destroy'
  put 'twitter/:id/favorite' => 'twitter#favorite',as: 'twitter_favorite'
end

Rails.application.routes.draw do
  devise_for :students
  root 'unis#index'
  get 'hakamatop' => 'unis#index'
  get 'unilist' => 'unis#unilist'
  get 'unis/:id' => 'products#select_options'
  get 'catalog' => 'products#kimono_list'
  get 'products/:id' => 'products#show'
  get 'products/:id/book' => 'products#booking'
  get 'uni/search' => 'unis#search'

end

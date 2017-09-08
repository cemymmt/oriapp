Rails.application.routes.draw do
  devise_for :students
  root 'unis#index'
  get 'hakamatop' => 'unis#index'
  get 'unilist' => 'unis#unilist'
  get 'unis/:id' => 'unis#select_options'
  get 'catalog' => 'products#kimono_list'
  get 'products/:id' => 'products#show'
  get 'products/:id/book' => 'products#booking'

end

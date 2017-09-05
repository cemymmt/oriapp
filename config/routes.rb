Rails.application.routes.draw do
  devise_for :students
  get 'uni' => 'unis#index'
  get 'unis/:id' => 'unis#select_options'
  get 'catalog' => 'products#kimono_list'
  get 'products/:id' => 'products#show'

end

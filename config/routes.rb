Rails.application.routes.draw do
  devise_for :students
  root 'unis#top'

  resources :unis, only: :index do
      resources :products, only: [:index, :show, :create, :destroy] do
         member do
          post "add", to: "favorites#create"
          get 'search'
          get 'search_color'
         end
         resources :bookings, only: [:new, :create]
           collection do
             get 'top'
             get 'search'
             get 'kimono_list'
           end
      end
  end

  resources :students, only: [:show]
  resources :favorites, only: [:create, :destroy]

  get 'top' => 'unis#top'
  get 'uni/search' => 'unis#search'
  get 'catalog' => 'products#kimono_list'
  delete 'comments' => 'products#destroy'


end

Rails.application.routes.draw do
  devise_for :students
  get 'uni' => 'unis#index'
  get 'uni/:id' => 'unis#select_options'

end

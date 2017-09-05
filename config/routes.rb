Rails.application.routes.draw do
  devise_for :students
  root 'unilists#index'

end

Rails.application.routes.draw do
  devise_for :students
 get 'unilists' => 'unilists#index'

end

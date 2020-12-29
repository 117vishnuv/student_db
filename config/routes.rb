Rails.application.routes.draw do
  devise_for :users
  resources :countries
  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'register', to: 'students#new', :as => 'register_students'
 get 'admin' , to: 'students#admin' , :as => 'admin'
 root to: "students#index"
end

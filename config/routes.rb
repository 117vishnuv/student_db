Rails.application.routes.draw do
  devise_for :users
  resources :countries
  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'register', to: 'students#new', :as => 'register_students'
 get 'admin' , to: 'admin#home' , :as => 'admin'
 get 'admin/approve' , to: 'admin#approve' , :as => 'approve'
 root to: "students#index"
end

Rails.application.routes.draw do
  devise_for :users
  resources :countries
  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/credential/search' , to: 'credential#index' , as: 'credential_search' #for searching students wrt credential 
  get 'register', to: 'students#new', :as => 'register_students' # create register url
  get 'admin' , to: 'admin#home' , :as => 'admin' #admin panel
  get 'admin/approve' , to: 'admin#approve' , :as => 'approve' #approval of student registration
  root to: "students#index" 
end

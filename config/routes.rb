Rails.application.routes.draw do
  devise_for :users
  resources :countries
  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/credential/search' , to: 'credential#index' , as: 'credential_search' #for searching students wrt credential 
  get 'register', to: 'students#new', :as => 'register_students' # create register url
  get 'admin' , to: 'admin#home' , :as => 'admin' #admin panel
  get 'admin/waiting_list' ,  to: 'admin#list' , :as => 'waiting_list' #Waiting list of newly registerd students
  match 'admin/approve/:id' , to: 'admin#approve' , :as => 'approve' , via: :patch #approval of student registration
  match 'admin/reject/:id' , to: 'admin#reject' , :as => 'reject' , via: :patch #rejetion of student registration
  root to: "students#index" 
end

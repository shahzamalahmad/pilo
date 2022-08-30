Rails.application.routes.draw do
  get 'locations/index'
  get '/locations/new'
  # post 'locations/new', to: "locations#new"
  post 'locations/create', to: 'locations#create'
  post 'locations/:id/edit', to: "locations#edit"


  get 'areas/index'
  get "/areas/new"
  post 'areas/create', to: "areas#create"
  post 'areas/:id/edit', to: "areas#edit"

  get 'operators/index'
  get 'operators/show'
  post 'operators/new'
  post 'operators/create', to: "operators#create"
   post 'operators/:id/edit', to: "operators#edit"


  get '/stp_dprs/index'
  get '/stp_dprs/show'
  get '/stp_dprs/new'
post 'stp_dprs/create', to: "stp_dprs#create"



  
   get 'ro_dprs/show/:id', to: "ro_dprs#show"
   get 'ro_dprs/new'
   get 'ro_dprs/today_dpr'
   
   post 'ro_dprs/create', to: "ro_dprs#create"
   post 'ro_dprs/:id/edit', to: "ro_dprs#edit"

   
  # get 'ro_dprs/ro_operator_dpr'
  # get 'ro_dprs/dpr/stp_operator_dpr'
  get 'home/index'
  get 'home/about'
  get 'home/dpr'
  get 'home/operators'

  root "home#index"

resources :ro_dprs
resources :stp_dprs
resources :operators
resources :areas
resources :locations
end

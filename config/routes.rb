Rails.application.routes.draw do
  get '/stp_dprs/index'
  get '/stp_dprs/show'
  get '/stp_dprs/new'
post 'stp_dprs/create', to: "stp_dprs#create"



  
   get 'ro_dprs/show/:id', to: "ro_dprs#show"
  # get 'ro_dprs/about'
   get 'ro_dprs/new'
   post 'ro_dprs/create', to: "ro_dprs#create"
   # post 'ro_dprs/destroy', to: "ro_dprs#destroy"
   post 'ro_dprs/:id/edit', to: "ro_dprs#edit"

   
  # get 'ro_dprs/ro_operator_dpr'
  # get 'ro_dprs/dpr/stp_operator_dpr'
  get 'home/index'
  get 'home/dpr'

  root "home#index"

resources :ro_dprs
resources :stp_dprs
end

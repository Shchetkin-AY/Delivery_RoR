Rails.application.routes.draw do

  root 'deliverys#index'

  resources :agents
end

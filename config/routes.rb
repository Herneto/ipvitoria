Rails.application.routes.draw do
  devise_for :users
  resources :visita
  resources :sermaos
  resources :contacts
  match 'historia' => 'historia#index', via: 'get'
  match 'inicio' => 'home#index', via: 'get'
  match 'declaracao' => 'declaracao#index', via: 'get'
  match 'lideres' => 'lideres#index', via: 'get'
  match 'fotos' => 'fotos#index', via: 'get'
  match 'mais' => 'sermaos#mais', via: 'get'
  
  root 'home#index'
end

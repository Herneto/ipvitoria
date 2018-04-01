Rails.application.routes.draw do
  resources :visita
  resources :sermaos
  resources :contacts
  match 'historia' => 'historia#index', via: 'get'
  match 'inicio' => 'home#index', via: 'get'
  match 'declaracao' => 'declaracao#index', via: 'get'
  match 'lideres' => 'lideres#index', via: 'get'
  match '/mais/:id' => 'sermaos#index', via: 'get'
  
  root 'home#index'
end

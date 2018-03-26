Rails.application.routes.draw do
  resources :contacts
  match 'historia' => 'historia#index', via: 'get'
  match 'inicio' => 'home#index', via: 'get'
  match 'declaracao' => 'declaracao#index', via: 'get'
  match 'lideres' => 'lideres#index', via: 'get'
  root 'home#index'
end

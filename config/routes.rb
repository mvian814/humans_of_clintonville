Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'humans#index'

get 'humans' => 'humans#index', as: :humans


get 'dogs' => 'dogs#index', as: :dogs

get 'cats' => 'cats#index', as: :cats



end

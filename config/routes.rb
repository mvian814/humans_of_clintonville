Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'humans#index'

  get '/humans' => 'humans#index', as: :humans
  get '/humans/new'=> 'humans#new', as: :new_human
  post '/humans' => 'humans#create', as: :create_humans

  get '/dogs' => 'dogs#index', as: :dogs
  get '/dogs/new' => 'dogs#new', as: :new_dog
  post '/dogs' => 'dogs#create', as: :create_dogs


  get '/cats' => 'cats#index', as: :cats
  get '/cats/new' => 'cats@new', as: :new_cat
  post '/cats' => 'cats#create', as: :create_cats



# get 'addpets' => 'pets#add', as: :addpets
# addpets is the folder in the view and index.html.erb where this fodler is pets ad the file is add.html.erb
# will need a pets controller with add edit delete dog or cat




end

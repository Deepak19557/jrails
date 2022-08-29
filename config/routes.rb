Rails.application.routes.draw do

  resources :users
  root 'users#index'
  patch '/update_book/:id' , to: 'books#update_book'
  post '/create_book', to: 'books#create_book'
  get '/edit_book/:id', to: 'books#edit_book'
  delete '/delete_book/:id', to: 'books#delete_book'
  get '/books/:id', to: 'books#show_book'
  # root 'books#books'
  get '/new_book', to: 'books#new_book'

  # get '/new_user', to: 'users#new_user'
  # root 'users#new_user'

end

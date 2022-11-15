Rails.application.routes.draw do

  #get '/' => 'homes#top', as: 'root'
  root to: 'homes#top'
  
  get 'homes/top'
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'

  get 'books/new'
  get 'books/edit'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'


end

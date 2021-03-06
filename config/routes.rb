Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index'
  resources :books
  get 'books/:id' => 'books#show' , as: 'bookers'
  get 'books/:id/edit' => 'books#edit', as: 'edit_bookers'
  get 'homes/top'
  get '/' => 'homes#top'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_bookers'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index'
  resources :books
  get 'books/:id' => 'books#show' , as: 'bookers'
  get 'homes/top'
  get 'top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

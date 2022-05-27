Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "lists#index"

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: %i[destroy]
end

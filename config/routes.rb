Rails.application.routes.draw do
 
  # resources :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :index]
      resources :users, only: [:show, :index]
      resources :book_copies, only: [:show, :index]
    end
  end


end

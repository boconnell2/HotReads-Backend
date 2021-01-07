Rails.application.routes.draw do
 
  # resources :books
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :books
      resources :users
      resources :book_copies
    end
  end


end

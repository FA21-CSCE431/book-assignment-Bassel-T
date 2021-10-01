Rails.application.routes.draw do
#  get 'books/delete'
#  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books do
    member do
      get :delete
    end
  end
  
  root 'books#index'

end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

    resources :companies do
      # resources :orders
      post 'create_order', on: :member
      # resources :products
    end

      get '/:name', to: 'companies#show', as: :company_name

resources :dashboards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

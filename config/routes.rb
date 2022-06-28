Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :restaurants
      resources :products
      resources :ingredients
      resources :categories
      get 'restaurants/:id/products', to: 'restaurants#products'
      get 'products/:id/ingredients', to: 'products#ingredients'
    end
  end

end

Rails.application.routes.draw do
  resources :categories
  resources :credit_cards
  resources :tags
  resources :transactions
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      namespace :web do
            end
    end
  end

end

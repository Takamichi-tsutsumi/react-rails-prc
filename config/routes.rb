Rails.application.routes.draw do
  resources :records
  root 'dashboard#index'

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :comments
    end
  end
end

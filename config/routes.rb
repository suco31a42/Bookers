Rails.application.routes.draw do
  root 'homes#top'

  resources :books, except: [:index] do
    get 'new', on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

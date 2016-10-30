Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artists#index"


    resources :artists

    resources :songs do
  collection do
    get 'delete_all_songs'
  end
end
end

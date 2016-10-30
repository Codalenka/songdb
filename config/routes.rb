Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artists#index"


    resources :artists do
      collection do
        get 'order_by_name'
        get 'order_by_created_at'
      end
    end


    resources :songs do
      collection do
        get 'delete_all_songs'
      end
    end
end

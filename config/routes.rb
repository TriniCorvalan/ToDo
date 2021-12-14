Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "to_do_lists#index"
  resources :to_do_lists do
    resources :to_do_items
  end
end

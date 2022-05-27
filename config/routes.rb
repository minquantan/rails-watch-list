Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index show new edit create] do
    resources :bookmarks, only: %i[index new create destroy]
  end
  # resources :bookmarks, only: %i[delete]
end

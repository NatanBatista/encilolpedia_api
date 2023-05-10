Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :champions, param: :name
  end
end

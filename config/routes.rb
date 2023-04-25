Rails.application.routes.draw do
  resources :champions, param: :name
end

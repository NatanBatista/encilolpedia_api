Rails.application.routes.draw do
  resources :champions, except: [:show]
  get 'champions/:name', to: 'champions#show', as: 'champion_by_name'
end

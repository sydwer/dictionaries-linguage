Rails.application.routes.draw do
  resources :dictionaries
  resources :dictionary_entries
  resources :languages
  resources :words
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'itemsearch#index'
  post '/search' => 'itemsearch#search'
end

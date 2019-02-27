Rails.application.routes.draw do
  resources 'trips'
  get 'lookup-ticket' => 'trips#ticket_search'
  
  post 'users' => 'users#create'
  get 'me' => 'users#me'
  post 'user_token' => 'user_token#create'
end

Rails.application.routes.draw do
  resources 'phones'
  post 'users' => 'users#create'
  get 'me' => 'users#me'
  post 'user_token' => 'user_token#create'
end

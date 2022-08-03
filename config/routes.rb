Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'auth/login', to: 'authentication#login'
      post 'auth/register', to: 'authentication#register'
      get '/posts', to: 'post#index'
      get '/posts/:id', to: 'post#show'
      put '/posts/:id', to: 'post#update'
      post '/posts', to: 'post#create'
      delete '/posts/:id', to: 'post#delete'
    end
  end
  root 'homepage#index'
  get '*path', to: 'homepage#index'
end

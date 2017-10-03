Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/characters' => 'characters#index'
      post '/characters' => 'characters#create'
      get '/characters/:id' => 'characters#show'
      patch '/characters/:id' => 'characters#update'
      delete '/characters/:id' => 'characters#destroy'
    end

    namespace :v2 do
      get '/characters' => 'characters#index'
      post '/characters' => 'characters#create'
      get '/characters/:id' => 'characters#show'
      patch '/characters/:id' => 'characters#update'
      delete '/characters/:id' => 'characters#destroy'
    end
  end
end

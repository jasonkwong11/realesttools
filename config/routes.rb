Rails.application.routes.draw do
  scope :api do 
    get "/properties(.:format)" => "properties#index"
    get "/properties/:id(.:format)" => "properties#show"
    post "/properties" => "properties#create"
  end
  root to: "searches#search"
  get '/search', to: 'searches#search', as: 'home'
  post '/search', to: 'searches#zillow'
end

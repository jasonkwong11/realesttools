Rails.application.routes.draw do
 root to: 'home#index' 
 # scope :api do 
    get 'property' => "properties#show" 
    get "/properties(.:format)" => "properties#index"
  #  get "/properties/:id(.:format)" => "properties#show"
    post "/properties" => "properties#create"
 # end
 # root to: "searches#search"
  get '/', to: 'home#search', as: 'home'
  post '/search', to: 'home#zillow'
end

Rails.application.routes.draw do
  scope :api do 
    get "/properties(.:format)" => "properties#index"
    get "/properties/:id(.:format)" => "properties#show"
    post "/properties" => "properties#create"
  end
  root to "home#index"
end

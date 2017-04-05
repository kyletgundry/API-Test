Rails.application.routes.draw do
  get "/crimes" => "crimes#index"
  get "/crimes/new" => "crimes#new"
end

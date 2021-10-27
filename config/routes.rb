Rails.application.routes.draw do
  root "main#index"

  get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  map.root :controller => "foo"
end

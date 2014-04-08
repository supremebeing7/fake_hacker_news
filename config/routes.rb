HackerNews::Application.routes.draw do
  root to: "links#index"


  resources :links
  match('/newest', via: :get, to: 'links#newest')
end

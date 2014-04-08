HackerNews::Application.routes.draw do
  root to: "links#index"

  resources :links
end

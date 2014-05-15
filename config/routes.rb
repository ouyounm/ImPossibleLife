ImPossibleLife::Application.routes.draw do

  resources :classifieds

  root to: "home#index"
  get "pages/about_us"
  resources :blogs do
  resources :entries
end
  resources :videos
end

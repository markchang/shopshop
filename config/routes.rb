Shopshop::Application.routes.draw do
  resources :categories do
    resources :ads
  end
  
  resources :ads, :except => [:index]

  root :to => "categories#index"
end

Rails.application.routes.draw do

  root "sneakers#index"
  namespace :api do
    resources :sneakers
  end

end

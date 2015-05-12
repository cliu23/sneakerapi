Rails.application.routes.draw do

  root "views#index"

  namespace :api do
  	namespace :v1 do
    	resources :sneakers
    end
  end

end

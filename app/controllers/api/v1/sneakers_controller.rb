module Api
	module V1

		class SneakersController < ApplicationController
	 		 protect_from_forgery with: :null_session

	 		def index
	 			sneakers = Sneaker.all
	 			render json: sneakers, only: [:name, :brand, :cost, :color, :store_id]
	 		end

	 		def show
	 			sneaker = Sneaker.find(params[:id])
	 			render json: sneaker, except: [:created_at, :updated_at], include: { store: {only: :name}}
	 		end

	 		def search
	 			search_term = params[:s]
	 			search_by = Sneaker.where("name LIKE ?", "%#{params[:s]}%")
	 			render json: search_by
	 		end


		end
	end
end




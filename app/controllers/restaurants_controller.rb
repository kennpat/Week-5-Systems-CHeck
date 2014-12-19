class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(rest_params)

		if @restaurant.save
			redirect_to "/restaurants"
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find_by(id_params)
	end

	private

		def rest_params
			params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :description)
		end

		def id_params
			params.require(:restaurant).permit(:id)
		end

end
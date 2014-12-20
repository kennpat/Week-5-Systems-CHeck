class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@restaurant = Restaurant.find_by(id: params[:id])
		@review = Review.new(the_params)
		# @review.rest_id = params[:id]
		# binding.pry
		if @review.save
			redirect_to "/restaurants/#{@review.rest_id}"
		else
			flash ('Your review was not saved!')
			redirect_to "/restaurants/#{@review.rest_id}"
		end
	end

	private

	def the_params

		params.require(:review).permit(:rating, :body, :rest_id)
	end

end
class DishesController < ApplicationController

	before_action :set_restaurant

		def create
			@dish = @restaurant.dish.create(dish_params)
			redirect_to @restaurant 
		end


		private

		def set_restaurant 
			@restaurant = Restaurant.find(params[:restaurant_id])
		end

		def dish_params
			params[:dish].permit(:content)
		end


end

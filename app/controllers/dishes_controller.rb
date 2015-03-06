class DishesController < ApplicationController

	before_action :set_restaurant
	before_action :set_dish, except: [:create]

		def create
			@dish = @restaurant.dishes.create(dish_params)
			redirect_to @restaurant 
		end


		private

		def set_restaurant 
			@restaurant = Restaurant.find(params[:restaurant_id])
		end

		def dish_params
			params[:dish].permit(:comments)
		end


end

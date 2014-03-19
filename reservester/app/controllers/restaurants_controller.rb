class RestaurantsController < ApplicationController

  def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)

  		if @restaurant.save
  			redirect_to @restaurant
	  	else
	  		render 'new'
	  	end
	end

	def index
    	@restaurant = Restaurant.all
	end


	def show
  		@restaurant = Restaurant.find(params[:id])
	end


	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy

		redirect_to restaurants_path
	end

	def edit
  		@restaurant = Restaurant.find(params[:id])
	end


	def update
		@restaurant = Restaurant.find(params[:id])

		if @restaurant.update(restaurant_params)
			redirect_to @restaurant
		else
			render 'edit'
		end
	end


	private
    def restaurant_params
      params[:restaurant].permit(:name, :description, :address, :phone, :photo)
    end
end

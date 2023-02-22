class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end
    def show
        @restaurant = Restaurant.find(params[:id])
      end
    def new
       @restaurant = Restaurant.new
    end
    def create
        @restaurant = Restaurant.new(params_restaurant)
        @restaurant.save
    end
    def edit 
        @restaurant = Restaurant.find(params[:id])
    end
    def update
        @restaurant = Restaurant.find(params[:id])
        @restaurant.update(params_restaurant)
        redirect_to restaurant_path(@restaurant)
      end
      def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        # No need for app/views/restaurants/destroy.html.erb
        redirect_to restaurants_path, status: :see_other
      end

      private

      def params_restaurant
        params.require(:restaurant).permit(:name, :phone_number, :address, :category)
      end 

end

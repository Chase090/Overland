class TravelsController < ApplicationController
        
    
    def new
        # binding.pry
        @travel = current_user.travels.build
        @travel.build_location 
    end

    def create
        @travel = current_user.travels.build(travel_params)
        # raise.params
        if @travel.save
            redirect_to travel_path(@travel)
        else
            flash[:message] = "Your invalid. Please try again."
            render :new
        end
    end

    def show 
        @travel = Travel.find(params[:id])
        binding.pry
    end

    def index
        # binding.pry
        @travels = current_user.travels.all
    end

    private

        def travel_params
            params.require(:travel).permit(:distance, :description, :user_id, :location_id, location_attributes: [:name, :longitude, :latitude, :state, :url])
        end
end

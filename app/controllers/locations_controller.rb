class LocationsController < ApplicationController

    # before_action :set_location, only: [:edit, :update, :show]
    
    def index
        @locations = Location.all
    end

    def new
        @location = Location.new
    end

    def create
        #  raise params.inspect
         @location = Location.new(location_params)
    
         if @location.save
           
           redirect_to location_path(@location)
         else
           render :new
         end
    end

    def show  
        @location = Location.find_by(id: params[:id])

      binding.pry  
    end

    def edit

    end

    def update
        @location.update(location_params)
        redirect_to location_path(@location)
    end


    private
    def location_params
        params.require(:location).permit(:name, :longitude, :latitude, :state, :url )
    end

    # def set_location
    #     @location = Location.find_by_id(id: params[:id])
    # end


end

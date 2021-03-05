class LocationsController < ApplicationController

    before_action :set_user, only: [:edit, :update, :show]
    
    def index
        binding.pry
        @locations = Location.all
    end

    def new
        @location = Location.new
    end

    def create
        #  raise params.inspect
         @location = current_user.locations.build(location_params)
    
         if @location.save
           
           redirect_to location_path(@location)
         else
           render :new
         end
    end

    # def show  
    #     binding.pry
    #     @location = current_user.locations.find_by(id: params[:id])          
    # end

    def edit

    end

    def update
        @location.update(location_params)
        redirect_to location_path(@location)
    end


    private
    def location_params
        params.require(:location).permit(:longitude, :latitude, :name, :state, :distance, :url, :season)
    end

    # def set_location
    #     @location = Location.find_by_id(session[:user_id])
    # end


end

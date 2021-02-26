# class LocationsController < ApplicationController

#     before_action :set_user, only: [:edit, :update, :show]
    


#     def new
#         @location = Location.new
#     end

#     def create
#          raise params.inspect
#          @location = current_user.location.build(location_params)
    
#          if @location.save
           
#            redirect_to location_path(@location)
#          else
#            render :new
#          end
#     end

#     def show 
#         @location = Location.find_by(id: params[:id])
    
    

#         #  binding.pry
#     end

#     def edit

#     end

#     def update
#         @location.update(location_params)
#         redirect_to user_path(@location)
#     end


    private
    def location_params
        params.require(:location).permit(:longitude, :latitude, :name)
    end

    def set_location
        @location = Location.find_by_id(session[:user_id])
    end


end

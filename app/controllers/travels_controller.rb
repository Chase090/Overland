class TravelsController < ApplicationController
        before_action :logged_in?
        before_action :set_travel, only: [:destroy, :edit, :update]
    
    def new
        flash[:message] = "So where'd you went?"
        @travel = current_user.travels.new
        @travel.build_location
    end

    def create
        @travel = current_user.travels.new(travel_params)
        if @travel.save
            redirect_to travel_path(@travel)
        else
            flash[:message] = "Invalid. Please try again."
            render :new
        end
    end

    def edit
        if current_user != @travel.user
            redirect_to user_path(current_user)
            flash[:message] = "Not yours buddy!"       
        end
    end

    def update 
        @travel.update(enrollment_params)
        if @travel.valid?
          redirect_to enrollment_path
          flash[:message]= "Really? You traveled? Good for you!"
        else
          render :edit
          flash[:message]= "Yeah something went wrong"
        end
    end

    def show 
        @travel = Travel.find(params[:id])
    end

    def index
        @travels = Travel.all
    end

    def destroy  
        @travel.destroy
        flash[:message]= "Aww"
        redirect_to travels_path
        
      end

    private

        def travel_params
            params.require(:travel).permit(:distance, :description, :user_id, :location_id, location_attributes: [:name, :longitude, :latitude, :state, :url])
        end

        def set_travel
            @travel = current_user.travels.find(params[:id])
        end
end

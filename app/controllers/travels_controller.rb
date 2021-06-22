class TravelsController < ApplicationController
        before_action :logged_in?, :logged_in_user
        before_action :set_travel, only: [:destroy, :edit, :update, :show]
        before_action :authorized, only: [:destroy, :edit, :update]
    
    def new
        flash[:message] = "So where'd you went?"
        @user = User.find_by(id: params[:user_id])
        @travel = @user.travels.new
        @travel.build_location
    end
    
    def create
       
        @travel = current_user.travels.new(travel_params)
        if @travel.save
            flash[:message] = "NICE!"
            redirect_to travel_path(@travel)
        else
            flash[:message] = "Your invalid. Please try again."
            render :new
        end
    end

    def edit
   
    end

    def update 
        @travel.update(travel_params)
        if @travel.valid?
          redirect_to travel_path(@travel)
          flash[:message]= "OK updated! So.... whats next?"
        else
          render :edit
          flash[:message]= "Yeah, something went wrong"
        end
    end

    def show 
    #  binding.pry
    end

    def index
        # binding.pry
        @user = User.find_by(id: params[:user_id])
        if current_user == @user
            @short = Travel.short_travel.all
            @long = Travel.long_travel.all   
        else
            flash[:message]= "Yeah, Don't do that...."
            redirect_to user_travels_path(current_user)
        end       
    end

    def destroy  
        @travel.destroy
        flash[:message]= "Aww"
        redirect_to user_travels_path(current_user)
        
    end
      

    private

        def travel_params
            params.require(:travel).permit(:distance, :description, :user_id, :location_id, location_attributes: [:name, :longitude, :latitude, :state, :url])
        end

        def set_travel
            @travel = Travel.find(params[:id])
        end

        def authorized
            if current_user != @travel.user
                redirect_to travel_path(@travel)
                flash[:message] = "Not yours buddy!"       
            end
        end
end

class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    


    def new
        flash[:message] = "Welcome!!"
        @user = User.new
    end

    def create
        # raise params.inspect
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to profile_path(@user.id)
        else
          render :new
        end
    end

    def show 
         @user = User.find_by_id(session[:user_id])
         @rig = @user.rig
         @travel = @user.travels.all
   
    end

    def edit

    end

    def update
        @user.update(user_params)
        redirect_to profile_path(@user) 
        flash[:message] = "Edit done! What's next?"
    end


    private
    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name, :avatar, rig_attributes: [:name, :make, :model, :year_model])
    end

    def set_user
        @user = User.find_by_id(session[:user_id])
    end
end

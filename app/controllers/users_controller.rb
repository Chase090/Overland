class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    before_action :logged_in?, only: [:edit, :update, :show]
    

    def new
        @user = User.new
    end

    def create
        # raise params.inspect
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to user_path(@user.id)
        else
          render :new
        end
    end

    def show 
        @user = User.find_by_id(session[:user_id])
    end

    def edit

    end

    def update

    end


    private
    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name)
    end

    def set_user
        @user = User.find_by_id(session[:user_id])
    end
end

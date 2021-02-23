class UsersController < ApplicationController
    

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
        if logged_in?
            @user = User.find_by_id(session[:user_id])
        end
    end



    private
    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name)
    end

end

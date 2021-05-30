class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    


    def new
        flash[:message] = "Welcome!!"
        @user = User.new
        @user.build_rig
    end

    def create
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
       
         if @user.rig == nil
            flash[:message] = "Input your rig please. Else input n/a"
            redirect_to user_edit_path(@user.id)
        else
            @rig = @user.rig
        end 
     
         @travel = @user.travels.all
   
    end

    def edit
        if @user.rig == nil
            @user.create_rig
        end
    end

    def update
  
        @user.update(user_params)
        if @user.valid?
            redirect_to profile_path(@user)
            flash[:message] = "Edit done! What's next?" 
        else 
            render :edit
            flash[:message] = "Something's wrong" 
            
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :password, :first_name, :last_name, :avatar, rig_attributes: [:name, :make, :model, :year_model, :avatar])
    end

    def set_user
        @user = User.find_by_id(session[:user_id])
    end
end

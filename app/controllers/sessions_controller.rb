class SessionsController < ApplicationController
    def new
        if logged_in? 
            redirect_to user_path(current_user)
        else
            @user=User.new
        end
    end
    
    def create
        user = User.find_by(email: params[:user][:email])
        
        if user && !!user.authenticate(params[:user][:password]) 
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            flash[:message] = "bruh"
            redirect_to login_path
        end
    end


    def omniauth
        user = User.find_or_create_by(uid: auth['uid'], provider: auth[:provider]) do |u|
            u.email = auth['email']
            u.password = SecureRandom.hex
            end
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else 
            flash[:message] = user.errors.full_messages.join("")
            redirect_to login_path
        end
    end 

        def destroy
            session.clear
            redirect_to login_path
        end
    

    


    private
        def auth
            request.env['omniauth.auth']
        end
    
end
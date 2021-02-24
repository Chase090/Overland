class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def login_required
        unless logged_in?
            redirect_to login_path
        end
    end
end

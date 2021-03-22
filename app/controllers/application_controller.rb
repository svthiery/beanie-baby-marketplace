class ApplicationController < ActionController::Base
    before_action :authorize_user
    helper_method :check_login?
     
    def set_current_user
        @current_user = User.find_by(id: session[:current_user_id])
    end

    def check_login?
        !set_current_user.nil?
    end

    def authorize_user
        flash[:error] = 'Please login to view content' unless check_login?
        redirect_to login_path unless check_login?
    end


end

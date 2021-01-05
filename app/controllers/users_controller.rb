class UsersController < ApplicationController

    skip_before_action :authorize_user, only: [:login, :post_login, :new, :create]
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def create_trade(arg)
        
    end

    def login
        
        @error = flash[:error]
    end

    def post_login
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.authenticate(params[:password])
            session[:current_user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = 'Incorrect username or password'
            redirect_to login_path
        end
    end

    def logout
        session[:current_user_id] = nil
        redirect_to login_path
    end

end

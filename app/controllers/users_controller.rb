class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def login
        @error = flash[:error]
    end

    def handle_login
        @user = User.find_by(user_name: params[:user_name])
        if @user && @user.authenticate(params[:password])
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect username or password"
            redirect_to login_path
        end
    end

end

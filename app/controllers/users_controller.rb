class UsersController < ApplicationController

    skip_before_action :authorize_user, only: [:login, :post_login, :new, :create]


    def new
        @babies = Baby.all
        @user = User.new
    end

    def create
        new_user = User.create(user_params)
        flash[:errors] = new_user.errors.full_messages
        if new_user
            session[:current_user_id] = new_user.id
            redirect_to user_path(new_user)
        else
            redirect_to new_user_path
        end
    end

    def home
        
    end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        user_id = @user.id
        @user_pending_trades_offered = Trade.where(g_ownership_id: 8)
        @pending_trades_offered = @user_pending_trades_offered.where(status: "pending")
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


    private
    def user_params
        params.require(:user).permit(:name, :user_name, :password, :location, :favorite_baby, :age)
    end

end

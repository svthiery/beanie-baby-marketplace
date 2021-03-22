class UsersController < ApplicationController

    skip_before_action :authorize_user, only: [:login, :post_login, :new, :create]


    def new
        @babies = Baby.all
        @user = User.new
    end

    def create
        new_user = User.create(user_params)
        flash[:errors] = new_user.errors.full_messages
        if new_user.id
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
        @user_pending_trades_offered = Trade.where(g_ownership_id: @user.ownerships.ids)
        @pending_trades_offered = @user_pending_trades_offered.where(status: "pending")
        @user_pending_trades_received = Trade.where(d_ownership_id: @user.ownerships.ids)
        @pending_trades_recieved = @user_pending_trades_received.where(status: "pending")
        user_trades1 = Trade.where(g_ownership_id: @user.ownerships.ids)
        user_trades2 = Trade.where(d_ownership_id: @user.ownerships.ids)
        @user_trades = user_trades1 + user_trades2
        @last_trade = @user_trades.last
        @last_baby
        
    
    end

    def add_funds
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(wallet: user.wallet + money_params[:wallet].to_i)
        redirect_to user_path(user)
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
            redirect_to home_path
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
        params.require(:user).permit(:name, :user_name, :password, :location, :favorite_baby, :age, :wallet)
    end

    def money_params
            params.require(:user).permit(:wallet)
    end
end

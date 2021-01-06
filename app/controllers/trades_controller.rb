class TradesController < ApplicationController
    # before_action :set_ownership
    def new 
        
        # @users = User.all.to_ary.select {|user| user.babies.to_ary.any? {|baby| baby.name == @desired_baby.name}}.delete_if {|user| user.name == @current_user.name}
        # @users = User.all.to_ary.delete_if {|user| user.name == @current_user.name}
        # @ownerships = Ownership.all.select {|own| own.user_id == @current_user}
        @desired_baby = Ownership.find(params[:id]).baby
        @babies = Ownership.all.select {|baby| baby.user == @current_user}

        @trade = Trade.new
    end

  def show
  
  end
    
    

    def create
        byebug
        trade = Trade.create(g_ownership_id: given_params, d_ownership_id: params[:id])
        redirect_to trade_path(trade)
    end

    private

    def given_params
        params.require(:trade).permit(:g_ownership_id)
    end

    def desired_params
        params
    end
end

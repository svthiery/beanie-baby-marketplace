class TradesController < ApplicationController
    # before_action :set_ownership
    def new 
        
        # @users = User.all.to_ary.select {|user| user.babies.to_ary.any? {|baby| baby.name == @desired_baby.name}}.delete_if {|user| user.name == @current_user.name}
        # @users = User.all.to_ary.delete_if {|user| user.name == @current_user.name}
        # @ownerships = Ownership.all.select {|own| own.user_id == @current_user}
        @desired_baby = Ownership.find(params[:id]).baby
        @babies = Ownership.all.select {|baby| baby.user == @current_user}

        @trade = Trade.new
        byebug
    end

  def show
        @trade = Trade.find(params[:id])

        @self_ownership = Ownership.find(@trade.g_ownership_id)
        @foreign_ownership = Ownership.find(@trade.d_ownership_id)
  end

  def cancel
    @trade = Trade.find(params[:id])
    @trade.update(status: "cancelled")
  end
    
  def trade
    trade = Trade.find(params[:id])
    @self_ownership = Ownership.find(trade.g_ownership_id)
    @foreign_ownership = Ownership.find(trade.d_ownership_id)
    confirm_trade(@self_ownership, @foreign_ownership)
    redirect_to user_path(@current_user)
  end

    def create
        trade = Trade.create(g_ownership_id: given_params[:g_ownership_id], d_ownership_id: params[:id], status: "pending")
        redirect_to trade_path(trade)
        byebug
    end

    private

    def confirm_trade(self_ownership, for_ownership)
        @trade = Trade.find(params[:id])
        byebug
        self_id = self_ownership.user_id
        for_id = for_ownership.user_id
        self_ownership.update(user_id: for_id)
        for_ownership.update(user_id: self_id)
        @trade.update(status: "completed")
    end

    def given_params
        params.require(:trade).permit(:g_ownership_id)
    end

    def desired_params
        params
    end
end

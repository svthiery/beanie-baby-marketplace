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

  
    # def set_ownership
    #     @desired_ownership = Ownership.find(params[:ownership_id])
    # end
    

    # def create
    #     Trade.create(trader:)
    # end
end

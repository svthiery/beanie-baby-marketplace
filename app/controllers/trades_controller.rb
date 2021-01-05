class TradesController < ApplicationController
    before_action :set_baby
    def new 
        byebug
        @users = User.all.to_ary.select {|user| user.babies.to_ary.any? {|baby| baby.name == @desired_baby.name}}.delete_if {|user| user.name == @current_user.name}
        # @users = User.all.to_ary.delete_if {|user| user.name == @current_user.name}
        
        @trade = Trade.new
    end

    def set_baby
        @desired_baby = Baby.find(params[:baby_id])
    end
    

    # def create
    #     Trade.create(trader:)
    # end
end

class OwnershipsController < ApplicationController

    def new
        @ownership = Ownership.new
    end

    def create
        # byebug
        @baby = Baby.find(baby_params[:baby_id].to_i)
        a = Ownership.create(baby_id: baby_params[:baby_id], user_id: @current_user.id, name: @baby.name, condition: baby_params[:condition], purchase_price: baby_params[:purchase_price])
        redirect_to user_path(a.user_id)

    end

    def destroy
        @ownership = Ownership.find(params[:id])
        @ownership.destroy
        redirect_to user_path(@ownership.user_id)
    end

    def show
        
        @ownership = Ownership.find(params[:id])
        @trade = Trade.find_by(g_ownership_id: @ownership.id)
    
    end

    def edit
        @ownership = Ownership.find(params[:id])
    end

    def update
        ownership = Ownership.find(params[:id])
        seller = User.find(ownership.user_id)
        seller.update(wallet: seller.wallet += ownership.purchase_price)
        buyer = @current_user
        buyer.update(wallet: buyer.wallet -= ownership.purchase_price)
        ownership.update(user_id: buyer.id)
        redirect_to user_path(buyer)
    end

    private

    def baby_params
        params.require(:ownership).permit(:baby_id, :condition, :purchase_price)
    end



end

class OwnershipsController < ApplicationController

    def new
        @ownership = Ownership.new
    end

    def create
        # byebug
        @baby = Baby.find(baby_params[:baby_id].to_i)
        a = Ownership.create(baby_id: baby_params[:baby_id], user_id: @current_user.id, name: @baby.name )
        redirect_to user_path(a.user_id)

    end

    def destroy
        @ownership = Ownership.find(params[:id])
        @ownership.destroy
        redirect_to user_path(@ownership.user_id)
    end

    def show
        @ownership = Ownership.find(params[:id])
        byebug
    end

    private

    def baby_params
        params.require(:ownership).permit(:baby_id)
    end


end

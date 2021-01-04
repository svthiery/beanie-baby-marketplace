class OwnershipsController < ApplicationController

    def new
        @ownership = Ownership.new
    end

    def create
        a = Ownership.create(ownership_params)
        redirect_to user_path(a.user_id)
    end

    def destroy
        @ownership = Ownership.find(params[:id])
        @ownership.destroy
        redirect_to user_path(@ownership.user_id)
    end

    private

    def ownership_params
        params.require(:ownership).permit(:user_id, :baby_id)
    end


end

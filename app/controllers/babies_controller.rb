class BabiesController < ApplicationController
    def index
        @babies = Baby.all
    end


    def show
        @baby = Baby.find(params[:id])
    end


end

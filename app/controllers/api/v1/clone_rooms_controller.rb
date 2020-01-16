class Api::V1::CloneRoomsController < ApplicationController

        def show
            if @clone_room = CloneRoom.find_by(id: params[:id])
                render json: @clone_room, status: 200
            else 
                render flash[:error] = "Record not found"
            end
        end
end
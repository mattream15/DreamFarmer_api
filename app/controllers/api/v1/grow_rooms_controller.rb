class Api::V1::GrowRoomsController < ApplicationController

        def show
            #if 
                @grow_room = GrowRoom.find_by(id: params[:id])
                render json: @grow_room, status: 200
            #else 
                #render flash[:error] = "Record not found"
            #end
        end
end
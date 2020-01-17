class Api::V1::GrowRoomsController < ApplicationController

        def show
            #if 
                @grow_room = GrowRoom.find_by(id: params[:id])
                render json: @grow_room, status: 200
            #else 
                #render flash[:error] = "Record not found"
            #end
        end

        def index
            @grow_rooms = GrowRoom.all
            render json: @grow_rooms, status: 200
        end
end
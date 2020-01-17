class Api::V1::CannabisPlantsController < ApplicationController

        def index
            #if current_user
            #    @cannabis_plants = current_user.cannabis_plants.all
            #else
                @cannabis_plants = CannabisPlant.all

                render json: @cannabis_plants, status: 200
            #end
        end

        def show
            #if 
                @cannabis_plant = CannabisPlant.find_by(id: params[:id])
                render json: @cannabis_plant, status: 200
                #@harvest = @cannabis_plant.harvest
            #else 
                #render flash[:error] = "Record not found"
            #end
        end
    
        def create
            @cannabis_plant = CannabisPlant.new(cannabis_plant_params)
            #@cannabis_plant = current_user.cannabis_plants.build(cannabis_plant_params)
            if @cannabis_plant.save
                render json: @cannabis_plant, status: 200
            else
                render json: "Cannabis Plant not saved"
            end
        end
    
        def update
            @cannabis_plant = CannabisPlant.find_by(id: params[:id])
            #if 
                @cannabis_plant.update(cannabis_plant_params)
                render json: @cannabis_plant, status: 200
            #else
                #render flash[:error] = "Record not updated"
            #end
        end

        def destroy
            @cannabis_plant = CannabisPlant.find_by(id: params[:id])
            @cannabis_plant.delete
            render json: {cannabisPlantId: @cannabis_plant.id}
        end
    
        private
    
        def cannabis_plant_params
            params.require(:cannabisPlant).permit(:species, :varietyName, :numberOfSeeds, :growRoomId)
        end
end

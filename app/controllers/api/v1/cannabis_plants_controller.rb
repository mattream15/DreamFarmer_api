class Api::V1::CannabisPlantsController < ApplicationController

        def index
                @cannabis_plants = CannabisPlant.all
                render json: @cannabis_plants, status: 200
        end

        def show
            if @cannabis_plant = CannabisPlant.find_by(id: params[:id])
                render json: @cannabis_plant, status: 200
            else 
                render json: "Cannabis Plant Not Found"
            end
        end
    
        def create
            @cannabis_plant = CannabisPlant.new(cannabis_plant_params)
            if @cannabis_plant.save
                render json: @cannabis_plant, status: 200
            else
                render json: "Cannabis Plant Not Saved"
            end
        end
    
        def update
            @cannabis_plant = CannabisPlant.find_by(id: params[:id])
            if @cannabis_plant.update(cannabis_plant_params)
                render json: @cannabis_plant, status: 200
            else
                render json: "Cannabis Plant Not Updated"
            end
        end

        def destroy
            @cannabis_plant = CannabisPlant.find_by(id: params[:id])
            @cannabis_plant.delete
            render json: {cannabisPlantId: @cannabis_plant.id}
        end
    
        private
    
        def cannabis_plant_params
            params.require(:cannabisPlant).permit(:species, :variety_name, :number_of_seeds, :grow_room_id)
        end
end

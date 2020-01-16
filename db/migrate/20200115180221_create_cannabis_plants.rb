class CreateCannabisPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :cannabis_plants do |t|
      t.string :species
      t.string :varietyName
      t.integer :numberOfSeeds
      t.integer :cloneRoomId
      t.timestamps
    end
  end
end

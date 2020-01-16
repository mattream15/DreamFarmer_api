class CreateGrowRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grow_rooms do |t|
      t.string :lightSource
      t.string :nutrient
      t.string :relativeHumidity
      t.string :temperature
      t.string :pH
      t.timestamps
    end
  end
end
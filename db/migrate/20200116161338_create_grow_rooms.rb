class CreateGrowRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grow_rooms do |t|
      t.string :light_source
      t.string :nutrient
      t.string :relative_humidity
      t.string :temperature
      t.string :pH
      t.timestamps
    end
  end
end

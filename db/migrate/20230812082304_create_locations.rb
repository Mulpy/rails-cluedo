class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :room
      t.text :photo

      t.timestamps
    end
  end
end

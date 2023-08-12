class CreateSuspects < ActiveRecord::Migration[7.0]
  def change
    create_table :suspects do |t|
      t.string :name
      t.string :color
      t.text :photo

      t.timestamps
    end
  end
end

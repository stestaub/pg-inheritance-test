class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.float :population
      t.integer :altitude

      t.timestamps
    end
  end
end

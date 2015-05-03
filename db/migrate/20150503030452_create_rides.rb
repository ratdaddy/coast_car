class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.references :user
      t.string :departure_address
      t.string :destination_address
      t.date :departure_date
      t.time :departure_time
      t.string :car_make
      t.string :car_model
      t.integer :car_year
      t.integer :car_comfort_level
      t.integer :car_condition
      t.integer :seats_available
      t.integer :luggage_restriction
      t.decimal :price, precision: 10, scale: 2
      t.text :comment

      t.timestamps null: false
    end
  end
end

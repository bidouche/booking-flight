class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.date :departure_date
      t.belongs_to :departure_airport
      t.belongs_to :arrival_airport
      t.timestamps
    end
  end
end

class CreateTurfBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :turf_bookings do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.date :book_date
      t.time :start_time
      t.time :end_time
      t.string :total_duration
      t.integer :amount
      t.string :status

      t.timestamps
    end
  end
end

class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :reserve_name
      t.string :room_type
      t.string :plan
      t.references :user, foreign_key: true

      t.datetime :start_time
      t.date :day


      t.timestamps
    end
  end
end

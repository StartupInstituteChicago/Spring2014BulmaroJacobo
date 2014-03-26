class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :date
      t.string :time
      t.string :restaurant

      t.timestamps
    end
  end
end

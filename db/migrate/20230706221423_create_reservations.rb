class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :ticket, foreign_key: true
      t.references :seat, foreign_key: true
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end

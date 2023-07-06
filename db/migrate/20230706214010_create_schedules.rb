class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :movie, foreign_key: true
      t.references :screen, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end

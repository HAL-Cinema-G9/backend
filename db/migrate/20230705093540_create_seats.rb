class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.references :screen, foreign_key: true
      t.string :column
      t.integer :row

      t.timestamps
    end
  end
end

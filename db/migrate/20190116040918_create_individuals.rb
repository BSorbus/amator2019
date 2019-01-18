class CreateIndividuals < ActiveRecord::Migration[5.2]
  def change
    create_table :individuals do |t|
      t.string :department
      t.string :number
      t.date :date_of_issue
      t.date :valid_to
      t.string :call_sign
      t.string :category
      t.integer :transmitter_power
      t.string :station_location

      t.timestamps
    end
  end
end

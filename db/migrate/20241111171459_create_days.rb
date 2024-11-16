class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days do |t|
      t.string :day_name
      t.string :abbreviation
      t.string :day_date
      t.boolean :is_weekend
      t.integer :day_position
      t.references :week

      t.timestamps
    end
  end
end

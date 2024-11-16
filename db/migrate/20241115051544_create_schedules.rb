class CreateSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :schedules do |t|
      t.references :tactician, null: false, foreign_key: true
      t.references :day, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end

  end #end change
end #end class

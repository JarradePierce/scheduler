class CreateTacticianSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :tactician_schedules do |t|
      t.references :tactician, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end

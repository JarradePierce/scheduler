class CreateTacticians < ActiveRecord::Migration[7.1]
  def change
    create_table :tacticians do |t|
      t.string :name
      t.string :contact_info
      t.boolean :is_available_mon
      t.boolean :is_available_tue
      t.boolean :is_available_wed
      t.boolean :is_available_thur
      t.boolean :is_available_fri
      t.boolean :is_available_sat
      t.boolean :is_available_sun

      t.timestamps
    end
  end
end

class CreateTacticians < ActiveRecord::Migration[7.1]
  def change
    create_table :tacticians do |t|
      t.string :name
      t.string :contact_info
      t.boolean :is_available

      t.timestamps
    end
  end
end

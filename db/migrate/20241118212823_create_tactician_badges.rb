class CreateTacticianBadges < ActiveRecord::Migration[7.1]
  def change
    create_table :tactician_badges do |t|
      t.references :tactician, null: false, foreign_key: true
      t.references :badge, null: false, foreign_key: true
      t.string :date_attained

      t.timestamps
    end
  end
end

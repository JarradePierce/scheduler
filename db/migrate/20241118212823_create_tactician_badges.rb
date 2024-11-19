class CreateTacticianBadges < ActiveRecord::Migration[7.1]
  def change
    create_table :tactician_badges do |t|

      t.timestamps
    end
  end
end

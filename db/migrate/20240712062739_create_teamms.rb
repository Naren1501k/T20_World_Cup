class CreateTeamms < ActiveRecord::Migration[7.1]
  def change
    create_table :teamms do |t|
      t.string :name
      t.string :counrty
      t.date :founded

      t.timestamps
    end
  end
end

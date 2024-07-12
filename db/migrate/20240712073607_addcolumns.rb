class Addcolumns < ActiveRecord::Migration[7.1]
  def change
    add_column :players, :team_id, :string, null: false

  end
end

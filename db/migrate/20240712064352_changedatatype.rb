class Changedatatype < ActiveRecord::Migration[7.1]
  def change
    change_column :teams, :founded, :year

  end
end

class AddGamificationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :level, :integer
    add_column :users, :experience, :integer
    add_column :users, :year, :string
  end
end

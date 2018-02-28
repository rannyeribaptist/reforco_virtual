class AddUserFieldsToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :year, :string
    add_column :profiles, :grade, :string
    add_column :profiles, :level, :string
    add_column :profiles, :experience, :string
  end
end

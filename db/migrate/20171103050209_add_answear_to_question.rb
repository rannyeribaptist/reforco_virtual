class AddAnswearToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answear, :string
  end
end

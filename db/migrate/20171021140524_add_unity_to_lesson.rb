class AddUnityToLesson < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :unity, :string
  end
end

class AddProfileToExercises < ActiveRecord::Migration[5.1]
  def change
    add_reference :exercises, :profile, foreign_key: true
  end
end

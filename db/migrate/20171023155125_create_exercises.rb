class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.belongs_to :lesson, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end

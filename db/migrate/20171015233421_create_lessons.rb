class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :content
      t.belongs_to :grade, foreign_key: true
      t.belongs_to :discipline, foreign_key: true

      t.timestamps
    end
  end
end

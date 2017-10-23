class CreateApostilles < ActiveRecord::Migration[5.1]
  def change
    create_table :apostilles do |t|
      t.string :name
      t.belongs_to :lesson, foreign_key: true

      t.timestamps
    end
  end
end

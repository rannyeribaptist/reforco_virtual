class CreateAnswears < ActiveRecord::Migration[5.1]
  def change
    create_table :answears do |t|
      t.belongs_to :lesson, foreign_key: true
      t.references :profile, foreign_key: true
      t.references :metadatum, foreign_key: true
      t.references :question, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end

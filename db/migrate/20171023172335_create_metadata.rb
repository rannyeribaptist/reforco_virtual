class CreateMetadata < ActiveRecord::Migration[5.1]
  def change
    create_table :metadata do |t|
      t.string :name
      t.string :value
      t.string :kind
      t.belongs_to :question, foreign_key: true

      t.timestamps
    end
  end
end

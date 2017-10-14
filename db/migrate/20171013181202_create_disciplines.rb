class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.belongs_to :config, foreign_key: true

      t.timestamps
    end
  end
end

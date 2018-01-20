class CreateDices < ActiveRecord::Migration[5.1]
  def change
    create_table :dices do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end

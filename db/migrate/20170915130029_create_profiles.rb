class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :avatar
      t.string :school
      t.string :responsible_name
      t.string :responsible_email
      t.string :responsible_phone

      t.timestamps
    end
  end
end

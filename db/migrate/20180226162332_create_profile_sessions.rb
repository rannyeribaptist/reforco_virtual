class CreateProfileSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_sessions do |t|
      t.references :profile, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

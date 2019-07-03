class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :role, foreign_key: true
      t.belongs_to :organization, foreign_key: true

      t.timestamps
    end
  end
end

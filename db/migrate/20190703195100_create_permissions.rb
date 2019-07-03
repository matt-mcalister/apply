class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.belongs_to :role, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

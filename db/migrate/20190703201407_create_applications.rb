class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.belongs_to :user_role, foreign_key: true
      t.belongs_to :opportunity, foreign_key: true

      t.timestamps
    end
  end
end

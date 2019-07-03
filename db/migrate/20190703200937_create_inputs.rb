class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.string :name
      t.belongs_to :input_type, foreign_key: true
      t.belongs_to :opportunity, foreign_key: true

      t.timestamps
    end
  end
end

class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.belongs_to :application, foreign_key: true
      t.belongs_to :input, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end

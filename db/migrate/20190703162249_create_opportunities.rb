class CreateOpportunities < ActiveRecord::Migration[5.1]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :description
      t.belongs_to :organization, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOrganizationAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_admins do |t|
      t.belongs_to :organization
      t.belongs_to :admin

      t.timestamps
    end
  end
end

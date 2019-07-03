require 'rails_helper'

RSpec.describe User, type: :model do
  it "validates presence of first name" do
    should validate_presence_of(:first_name)
  end
  it "validates presence of last name" do
    should validate_presence_of(:last_name)
  end
  it "validates presence of email" do
    should validate_presence_of(:email)
  end
  it "validates uniqueness of email" do
    should validate_uniqueness_of(:email)
  end
  it "validates format of email" do
    should allow_value("email@address.horse").for(:email)
    should_not allow_value("foo").for(:email)
  end
  it "should have many organization_admins, foreign_key admin_id" do
    should have_many(:organization_admins).with_foreign_key('admin_id')
  end
  it "should have many organizations through organization_admins" do
    should have_many(:organizations).through(:organization_admins)
  end
end

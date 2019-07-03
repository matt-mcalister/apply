require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should have many organization_admins" do
    should have_many(:organization_admins)
  end
  it "should have many admins through organization_admins" do
    should have_many(:admins).through(:organization_admins)
  end
end

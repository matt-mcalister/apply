require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should have many opportunities" do
    should have_many(:opportunities)
  end
  it "should have many user_roles" do
    should have_many(:user_roles)
  end
  it "should have many users through user_roles" do
    should have_many(:users).through(:user_roles)
  end
end

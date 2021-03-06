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
  it "should have many user_roles" do
    should have_many(:user_roles)
  end
  it "should have many organizations through user_roles" do
    should have_many(:organizations).through(:user_roles)
  end
  it "should have many permissions through user_roles" do
    should have_many(:permissions).through(:user_roles)
  end
end

require 'rails_helper'

RSpec.describe UserRole, type: :model do
  it "should belong to an organization" do
    should belong_to(:organization)
  end
  it "should belong to a user" do
    should belong_to(:user)
  end
  it "should belong to a role" do
    should belong_to(:role)
  end
  it "should have many permissions through role" do
    should have_many(:permissions).through(:role)
  end
end

require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should have many opportunities" do
    should have_many(:opportunities)
  end
end

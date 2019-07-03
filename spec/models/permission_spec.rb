require 'rails_helper'

RSpec.describe Permission, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should belong to a role" do
    should belong_to(:role)
  end
end

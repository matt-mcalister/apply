require 'rails_helper'

RSpec.describe Role, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should have many permissions" do
    should have_many(:permissions)
  end
end

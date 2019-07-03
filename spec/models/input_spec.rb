require 'rails_helper'

RSpec.describe Input, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "should belong to a input_type" do
    should belong_to(:input_type)
  end
  it "should belong to a opportunity" do
    should belong_to(:opportunity)
  end
end

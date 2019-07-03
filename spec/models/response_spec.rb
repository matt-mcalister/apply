require 'rails_helper'

RSpec.describe Response, type: :model do
  it "validates presence of value" do
    should validate_presence_of(:value)
  end
  it "should belong to an application" do
    should belong_to(:application)
  end
  it "should belong to an input" do
    should belong_to(:input)
  end
end

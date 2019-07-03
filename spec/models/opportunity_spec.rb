require 'rails_helper'

RSpec.describe Opportunity, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
  it "validates presence of description" do
    should validate_presence_of(:description)
  end
  it "should belong to an organization" do
    should belong_to(:organization)
  end
end

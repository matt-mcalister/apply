require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "validates presence of name" do
    should validate_presence_of(:name)
  end
end

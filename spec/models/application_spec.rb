require 'rails_helper'

RSpec.describe Application, type: :model do
  it "should belong to a user_role" do
    should belong_to(:user_role)
  end
  it "should belong to an opportunity" do
    should belong_to(:opportunity)
  end
end

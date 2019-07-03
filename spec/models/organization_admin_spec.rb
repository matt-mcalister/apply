require 'rails_helper'

RSpec.describe OrganizationAdmin, type: :model do
  it "should belong to an organization" do
    should belong_to(:organization)
  end
  it "should belong to an admin (class name is User)" do 
    should belong_to(:admin).class_name('User')
  end
end

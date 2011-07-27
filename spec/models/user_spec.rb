require 'spec_helper'

describe User do
  before(:each) do
    @attr = { name: "johnkowalski", fullname: "John Kowalski", 
      email: "kowalski@example.com", password: "foobar" }
  end

  describe "Create a user" do

    it "test1" do
      User.create!(@attr)
    end

    it "test2" do
      User.create!(@attr)
    end

    it "should reject duplicate email addresses" do
      User.create!(@attr)
      user_with_duplicate_email = User.new(@attr.merge(name: "nowak"))
      user_with_duplicate_email.should_not be_valid
    end

    it "test3" do
      User.create!(@attr)
    end
  end
end

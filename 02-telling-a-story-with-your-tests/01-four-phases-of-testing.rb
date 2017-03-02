require "rspec/autorun"

#Setup - get the conditions correct for the test
#Exercise - perform the thing that you're testing
#Verification - verify that the exercise did what you expected
#Teardown - undo any conditions that shouldn't persist post-test

describe "#promote_to_admin" do
  it "makes a regular membership an admin membership" do
    # setup
    membership = Membership.new(admin: false)

    # exercise
    membership.promote_to_admin

    # verify
    expect(membership).to be_admin
  end
end

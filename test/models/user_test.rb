require "test_helper"

describe User do
  describe "validations" do
    it "user can be valid if it has a name" do
      is_valid = users(:valid_user_all_fields).valid?
      assert(is_valid )
    end

    it "user is invalid if there is no name" do
      user = users(:invalid_user_noName)
      is_valid = user.valid?
      refute( is_valid )
    end
  end
end

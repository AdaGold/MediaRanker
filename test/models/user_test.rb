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

  describe "relationships" do
    it "can have vote for many works" do
      # Arrange
      #Create a user
      user = users(:valid_user_all_fields)
      work_one = Work.create!(title: "earth", category: "something")
      work_two = Work.create!(title: "earth2", category: "something")
      vote1 = Vote.create!(user: user, work: work_one)
      vote2 = Vote.create!(user: user, work: work_two)
      #Act/Assert
      expect(user.votes.length).must_equal 2
      expect(user.votes).must_include vote1
      expect(user.votes).must_include vote2
    end
  end
end
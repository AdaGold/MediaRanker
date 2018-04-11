require "test_helper"

describe User do

  describe "relations" do
    it "must be valid" do
      user = users(:lily)
      value(user).must_be :valid?
    end

    it "must only have a valid username" do
      user = users(:lily)

      user.username = ""
      user.valid?.must_equal false
      user.errors.must_include :username

      user.username = " "
      user.valid?.must_equal false
      user.errors.must_include :username

      user.username = nil
      user.valid?.must_equal false
      user.errors.must_include :username

      user.username = "Millz"
      user.valid?.must_equal false
      user.errors.must_include :username
    end

    it "registers new votes" do
      user = users(:lily)
      work = works(:pride)
      vote = Upvote.create! work: work, user: user
      user.upvotes.last.must_equal vote
    end
  end


end

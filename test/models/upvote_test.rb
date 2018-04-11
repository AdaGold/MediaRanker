require "test_helper"

describe Upvote do
  describe "relations" do
    it "must be valid" do
      upvote = Upvote.create! work: works(:pride), user: users(:lily)

      value(upvote).must_be :valid?
    end

    it "establishes relationships" do
      work = works(:pride)
      user = users(:lily)
      upvote = Upvote.create! work: work, user: user

      upvote.work.must_equal work
      upvote.user.must_equal user
    end

    it "must have a unique combination of user and work" do
      work = works(:pride)
      user = users(:lily)

      first = Upvote.create! work: work, user: user

      value(first).must_be :valid?

      # second = Upvote.create! work: work, user: user
      #
      # second.valid?.must_equal false
      # work.errors.must_include :work_id
    end
  end
end

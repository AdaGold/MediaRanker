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

    it "must only have a valid user" do
    #   upvote = Upvote.create work: works(:pride), user: users(:lily)
    #
    #   work.title = ""
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = " "
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = nil
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = "I, Tonya"
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    # end

    # it "must only have a valid work" do
    #   work = works(:pride)
    #
    #   work.title = ""
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = " "
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = nil
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    #
    #   work.title = "I, Tonya"
    #   work.valid?.must_equal false
    #   work.errors.must_include :title
    # end

    it "must have a unique combination of user and work" do
      work = works(:pride)
      user = users(:lily)

      first = Upvote.create! work: work, user: user

      value(first).must_be :valid?

      # second = Upvote.create work: work, user: user
      #
      # second.valid?.must_raise error?
      # work.errors.must_include :work_id
    end
  end
end

require "test_helper"

describe Work do

  describe "create new work" do

    describe "relations" do
      it "must be valid" do
        work = works(:pride)
        value(work).must_be :valid?
      end

      it "must only have a valid title" do
        work = works(:pride)

        work.title = ""
        work.valid?.must_equal false
        work.errors.must_include :title

        work.title = " "
        work.valid?.must_equal false
        work.errors.must_include :title

        work.title = nil
        work.valid?.must_equal false
        work.errors.must_include :title

        work.title = "I, Tonya"
        work.valid?.must_equal false
        work.errors.must_include :title
      end

      it "must only have a valid creator" do
        work = works(:help)

        work.creator = ""
        work.valid?.must_equal false
        work.errors.must_include :creator

        work.creator = nil
        work.valid?.must_equal false
        work.errors.must_include :creator

        work.creator = " "
        work.valid?.must_equal false
        work.errors.must_include :creator
      end

      it "must only have a valid publication year" do
        work = works(:itonya)

        work.publication_year = ""
        work.valid?.must_equal false
        work.errors.must_include :publication_year

        work.publication_year = nil
        work.valid?.must_equal false
        work.errors.must_include :publication_year

        work.publication_year = -1
        work.valid?.must_equal false
        work.errors.must_include :publication_year

        work.publication_year = Date.current.year+1
        work.valid?.must_equal false
        work.errors.must_include :publication_year
      end

      it "registers new votes" do
        work = works(:pride)
        vote = Upvote.create! work: work, user: users(:lily)
        work.upvotes.last.must_equal vote
      end
    end

    #test methods
  end


end

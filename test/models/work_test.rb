require "test_helper"

describe Work do
  # it "does a thing" do
  #   value(1+1).must_equal 2
  # end
  describe "validations" do
    it "can be valid" do
      is_valid = works(:valid_work_all_fields).valid?
      assert(is_valid )
    end

    it "is invalid if there is no title" do
      work = works(:invalid_work_noTitle)
      is_valid = work.valid?
      refute( is_valid )
    end
  end
end
 
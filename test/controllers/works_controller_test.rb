require "test_helper"

describe WorksController do
 
  describe "index" do
    it "responds with success when there is at least one work saved" do
      get works_path
      
      must_respond_with :success
      expect(Work.count).must_equal 0
    end
  end
end

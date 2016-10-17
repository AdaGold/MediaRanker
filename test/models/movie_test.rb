require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  test "validations: album name can't be blank" do 
    movie = Movie.new

    assert_not movie.valid?
    assert movie.errors.keys.include?(:name), "name is not present"
  end

end

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  
  test "director can have movie" do
    assert_includes directors(:Gene_Rodenberrry).movies, movies(:Star_Trek) 

  end

  test "Create an empty movie"  do 
    mymovie = Movie.new
    assert mymovie.valid?
  end

   test "validations: movie name cannot be blank" do
    mymovie = Movie.new(:name => "Awesome movie")

    assert_not mymovie.valid?
    assert mymovie.errors.keys.include?(:name), "Name is not in the errors hash"
  end

end

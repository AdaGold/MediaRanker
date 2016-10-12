require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'album must have a name' do
    blue = Album.new

    assert_not(blue.valid?, "albums need names to be valid")

    blue.name = "Kanye"

    assert(blue.valid?, "somehow kanye is not valid")
  end
end

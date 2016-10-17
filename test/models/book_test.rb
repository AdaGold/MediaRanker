require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "validations: book name can't be blank" do 
    book = Book.new

    assert_not book.valid?
    assert book.errors.keys.include?(:name), "name is not present"
  end
end

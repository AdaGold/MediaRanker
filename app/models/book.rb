class Book < ActiveRecord::Base
  belongs_to :author
  has_many :upvotes, dependent: :destroy
end

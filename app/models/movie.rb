class Movie < ActiveRecord::Base
  belongs_to :director
  has_many :upvotes, dependent: :destroy
  validates_presence_of :name, :director, :description

end

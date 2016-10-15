class Movie < ActiveRecord::Base
  belongs_to :director
  validates_presence_of :name, :director, :description

end

class Album < ActiveRecord::Base
  belongs_to :recorded_by
  validates_presence_of :name, :recorded_by, :description
end

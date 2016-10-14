class Album < ActiveRecord::Base
  belongs_to :recorded_by
  has_many :upvotes, dependent: :destroy
  validates_presence_of :name, :recorded_by, :description
end

class Album < ActiveRecord::Base
  belongs_to :recorded_by
  has_many :upvotes, dependent: :destroy
end

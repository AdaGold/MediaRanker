class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :work

  # validates_uniqueness_of :user_id, scope: :work_id

  def featured
    tallied = self.group(:work_id).count
    top = tallied.select {|k,v| v == tallied.values.max }

    featured = Work.find_by(id: top.flatten[0])

    count = top.flatten[1]

    return featured, count
  end
end

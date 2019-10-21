class Vote < ApplicationRecord
  belongs_to :work
  belongs_to :user

  validates :user_id, uniqueness: { scope: :work_id, message: "User can only vote once per work" }
end

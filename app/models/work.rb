class Work < ApplicationRecord
  has_many :upvotes

  validates :title, presence: true, uniqueness: true, length: { minimum: 1}

  validates :creator, presence: true

  validates :publication_year, presence: true, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: Date.current.year}

  def get_count
    return upvotes.size
  end


end

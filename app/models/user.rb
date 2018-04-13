class User < ApplicationRecord
  has_many :upvotes

  validates :username, presence: true, uniqueness: true, length: { minimum: 1}

  def get_count
    return upvotes.count
  end

  def self.get_user(input)
    @user = User.find_by(id: input)
    if @user != nil
      return @user
    end
  end

end

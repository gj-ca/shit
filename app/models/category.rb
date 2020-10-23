class Category < ApplicationRecord
  belongs_to :user
  has_many :items
  validate :check_user_exists, on: :create

  def check_user_exists
    if !User.find_by(id: user_id) 
      errors.add(:user_id, "There is no matching user")
    end
  end
end

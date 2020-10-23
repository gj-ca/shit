class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 3 }
    validate :smartFiltering, on: :create
    has_many :categories

    def smartFiltering
        if username.include?("fuck")
            errors.add(:username, "Your username is profane, please change")
        end
    end
end

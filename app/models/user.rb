class User < ApplicationRecord
    has_many :tasks
    validates :username, presence: true
    validates :username, uniqueness: true
    
end

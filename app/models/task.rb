class Task < ApplicationRecord
    belongs_to :user

    validates :taskname, presence: true
    validates :description, presence: true

end

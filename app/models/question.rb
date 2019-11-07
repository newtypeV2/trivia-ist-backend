class Question < ApplicationRecord
    belongs_to :quiz
    has_one :user, through: :quiz
    has_many :choices
end

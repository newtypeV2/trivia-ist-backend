class User < ApplicationRecord
    has_secure_password
    has_many :quizzes
    has_many :questions, through: :quizzes
end

class UserSerializer < ActiveModel::Serializer
  has_many :quizzes

  attributes :id, :username
end

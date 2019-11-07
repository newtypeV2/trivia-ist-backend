class QuizSerializer < ActiveModel::Serializer
  has_many :questions
  belongs_to :user

  attributes :id, :title
end

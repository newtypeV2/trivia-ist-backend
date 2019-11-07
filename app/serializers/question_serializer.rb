class QuestionSerializer < ActiveModel::Serializer
  has_many :choices
  belongs_to :quiz

  attributes :id, :answer, :text_question

end

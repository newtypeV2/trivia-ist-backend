class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :answer, :text_question, :quiz_id

  belongs_to :quiz
  has_many :choices
  
end

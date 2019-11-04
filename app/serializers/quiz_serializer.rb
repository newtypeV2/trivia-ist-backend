class QuizSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :genre, :questions
  # has_many :questions
  # belongs_to :user

  def questions
    object.questions.map do |question|
      QuestionSerializer.new(question).data
    end
  end


end

class UserSerializer
  include FastJsonapi::ObjectSerializer
  

  attributes :id, :username
  attribute :quiz

  def quiz
    object.quizzes.map do |quiz|
      {id: quiz.id, genre: quiz.genre}
    end
  end
  





end

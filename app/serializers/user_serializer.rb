class UserSerializer
  include FastJsonapi::ObjectSerializer
  

  attributes :id, :username

  has_many :quizzes

end

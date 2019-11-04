class SessionsController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user.to_json(default_serial)
        # json_serial = UserSerializer.new(user).serialized_json
        # render json: json_serial
    end

    def test
        quiz = Quiz.find(params[:id])
        render json: QuizSerializer.new(quiz).serialized_json
    end

private

    def default_serial
        {
            :only => [:id, :username],
            :include => {
                :quizzes => {
                    :only => [:id, :genre],
                }
            }
        }
    end

end

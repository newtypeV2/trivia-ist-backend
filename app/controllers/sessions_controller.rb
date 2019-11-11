class SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: UserSerializer.new(user).as_json
        else
            render json: {'message': 'Incorrect Username / Password'}
        end
    end

    def show
        user = User.find(params[:id])
        # render json: user.to_json(default_serial)
        json_serial = UserSerializer.new(user).as_json
        render json: json_serial
    end

    def testing
        test_subj = Question.find(params[:id])
        render json: QuestionSerializer.new(test_subj).as_json
        
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

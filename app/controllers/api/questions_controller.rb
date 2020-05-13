class Api::QuestionsController < ApplicationController
    
    attr_reader :questions

    def index
        @questions = Question.all()
        render "api/questions/game"
    end

    def test
        @questions = Question.find_by(params[:test])
        render "api/questions/game"
    end

    def category
        @questions = Question.find_by(params[:category])
        render "api/questions/game"
    end

    private

    params.requre(:questions).permit(
        :question_text,
        :answer,
        :answers_array,
        :category,
        :difficulty,
        :test
    )
    


end

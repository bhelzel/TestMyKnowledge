class Api::QuestionsController < ApplicationController
    
    attr_reader :questions

    def index
        @questions = Question.all()
        render "api/questions/index"
    end

    def test
        @questions = Question.find_by(params[:test])
        render "api/questions/test"
    end

    def category
        @questions = Question.find_by(params[:category])
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

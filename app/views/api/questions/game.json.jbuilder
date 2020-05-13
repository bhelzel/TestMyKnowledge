json.array! @questions do |question|
    json.extract! question, 
        :question_text, 
        :answer, 
        :answers_array, 
        :category, 
        :test, 
        :difficulty
    end
end
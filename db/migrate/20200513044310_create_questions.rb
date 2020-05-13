class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question_text, null: false
      t.string :answer, null: false
      t.string :answers_array, null: false, array: true
      t.string :category, null: false
      t.string :difficulty, null: false
      t.string :knowledge_test, null: false
      t.timestamps
    end
  end
end


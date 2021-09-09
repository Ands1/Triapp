class CreateQuizTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_topics do |t|
      t.string :question1, null: false, default: ""
      t.string :question2, null: false, default: ""
      t.string :question3, null: false, default: ""
      t.string :question4, null: false, default: ""
      t.string :question5, null: false, default: ""
      t.timestamps
    end
    add_reference :quiz_topics, :quizzes, foreign_key: true
  end
end

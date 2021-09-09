class CreateUserTopicAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :user_topic_answers do |t|
      t.boolean :is_right, null: false, default: ""
      t.datetime :answer_time, null: false, default: ""
      t.timestamps
    end
    add_reference :user_topic_answers, :users, foreign_key: true
    add_reference :user_topic_answers, :quiz_topics, foreign_key: true
    add_reference :user_topic_answers, :topic_choices, foreign_key: true
  end
end

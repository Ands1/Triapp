class CreateTopicChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :topic_choices do |t|
      t.boolean :right_choice      
      t.timestamps
    end
    add_reference :topic_choices, :quiz_topics, foreign_key: true
  end
end

class CreateHashtagQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtag_questions do |t|
      t.references :hashtag, index: true
      t.references :question, index: true
      
      t.timestamps
    end
  end
end

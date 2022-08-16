class AddAuthorIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :author_id, :integer, optional: true
    add_index :questions, :author_id
  end
end

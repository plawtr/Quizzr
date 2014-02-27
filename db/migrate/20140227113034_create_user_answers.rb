class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.boolean :answer
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end

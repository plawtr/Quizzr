class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.boolean :answer

      t.timestamps
    end
  end
end

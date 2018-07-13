class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :answer, null: false
      t.integer :q_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :answers, :user_id
  end
end

class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.references :answer, foreign_key: true
      t.references :play,   foreign_key: true

      t.timestamps
    end
  end
end

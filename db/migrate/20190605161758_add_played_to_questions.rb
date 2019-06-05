class AddPlayedToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :played, :boolean, default: false
  end
end

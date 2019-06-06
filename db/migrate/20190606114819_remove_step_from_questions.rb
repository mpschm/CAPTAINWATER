class RemoveStepFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :step
    remove_column :games, :current_step
  end
end

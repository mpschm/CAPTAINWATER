class AddStepToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :step, :integer
    add_column :games, :current_step, :integer
  end
end

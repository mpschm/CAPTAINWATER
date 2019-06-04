class RenameValidToCorrectInAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :valid, :correct
  end
end

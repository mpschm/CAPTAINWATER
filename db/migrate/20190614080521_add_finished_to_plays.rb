class AddFinishedToPlays < ActiveRecord::Migration[5.2]
  def change
    add_column :plays, :finished, :boolean
  end
end

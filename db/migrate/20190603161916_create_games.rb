class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :code
      t.string :current_step

      t.timestamps
    end
  end
end

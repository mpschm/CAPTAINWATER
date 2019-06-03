class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pseudo,     :string
    add_column :users, :age,        :integer
    add_column :users, :coliving,   :boolean
    add_column :users, :country,    :string
    add_column :users, :avatar,     :string
    add_column :users, :waterprint, :integer
  end
end

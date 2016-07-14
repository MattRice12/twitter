class RemoveBodyFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :body, :string
  end
end

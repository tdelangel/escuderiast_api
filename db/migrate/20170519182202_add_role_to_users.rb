class AddRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :integer, default: 'User'
  end
end

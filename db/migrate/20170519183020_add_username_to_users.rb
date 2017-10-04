class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, default: 'User'
    add_column :users, :id_clientes, :integer
    add_column :users, :id_usuario, :integer
  end
end

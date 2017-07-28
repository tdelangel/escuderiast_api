class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string, default: 'User'
    add_column :users, :id_clientes, :integer
    add_column :users, :id_usuario, :integer
  end
end

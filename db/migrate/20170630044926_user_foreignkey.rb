class UserForeignkey < ActiveRecord::Migration[5.0]
  def change
  		#add_foreign_key :users, :cat_clientes
  		#add_reference :users, :cat_clientes,column: :id_clientes, foreign_key: true
  		#add_foreign_key :users, :cat_clientes, column: :id_clientess,column: :cat_cliente_id
  	end
end

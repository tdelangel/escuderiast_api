class ChangeIntegerLimitInYourTable < ActiveRecord::Migration
   def change
     change_column :cat_clientes, :id, :integer, limit: 8
     change_column :cat_clientes, :idcat_cliente, :integer, limit: 8
     change_column :cat_clientes, :cat_cliente_tel, :integer, limit: 8
     change_column :cat_clientes, :cat_cliente_cel, :integer, limit: 8
   end 
 end
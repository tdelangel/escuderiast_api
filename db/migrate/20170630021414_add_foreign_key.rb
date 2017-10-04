class AddForeignKey < ActiveRecord::Migration
  def change
  	 add_foreign_key :users, :cat_roles, column: :role, primary_key: "id"
  end
end

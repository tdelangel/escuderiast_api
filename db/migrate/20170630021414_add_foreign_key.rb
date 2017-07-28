class AddForeignKey < ActiveRecord::Migration[5.0]
  def change
  	 add_foreign_key :users, :cat_roles, column: :role, primary_key: "id"
  end
end

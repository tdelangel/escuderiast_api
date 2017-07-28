class AddIdCatMarcaAuto < ActiveRecord::Migration[5.0]
def change
    add_column :cat_autos, :cat_marca_auto, :integer
  end
end

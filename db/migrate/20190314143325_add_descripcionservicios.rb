class AddDescripcionservicios < ActiveRecord::Migration[5.0]
  def change
  
    add_column :servicios, :nombre, :string
    add_column :servicios, :detalles, :text
    add_column :servicios, :precioBase, :int8
  
  end
end
class AddDescripcionhuespedes < ActiveRecord::Migration[5.0]
 def change
    add_column :huespeds, :cedula, :int8
    add_column :huespeds, :nombres, :text
    add_column :huespeds, :apellidos, :text
    add_column :huespeds, :celular, :text
    add_column :huespeds, :email, :text
    add_column :huespeds, :fecha_nacimiento, :date
    add_column :huespeds, :pais_origen, :text
  end
end
class AddDescripcionsolicitudes < ActiveRecord::Migration[5.0]
   def change
    
        add_column :solicituds, :precio, :int8
        add_column :solicituds, :especificaciones, :text
  
  end
end
class CreateSolicituds < ActiveRecord::Migration[5.0]
  def change
    create_table :huespeds do |t|
    end
 
    create_table :servicios do |t|
    end
        
    create_table :solicituds do |t|
      t.belongs_to :huesped, index: true
      t.belongs_to :servicio, index: true  
    end
  end
end
class Solicitud < ApplicationRecord
    has_many :empleados
    belongs_to :huesped, primary_key: 'cedula', foreign_key: 'huesped_id'
    belongs_to :servicio
end
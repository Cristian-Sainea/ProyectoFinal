class Huesped < ApplicationRecord #ActiveRecord::Base
    
    has_many :solicituds, primary_key: 'cedula', foreign_key: 'huesped_id'
    has_many :servicios, through: :solicituds
    
end 
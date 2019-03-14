class Servicio < ApplicationRecord #ActiveRecord::Base
    has_many :solicituds
    has_many :huespeds, through: :solicituds
end 
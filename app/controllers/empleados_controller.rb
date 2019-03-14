class EmpleadosController < ApplicationController

    def new
        @empleado = Empleado.new
    end
    
    def create
         @empleado = Empleado.new(empleado_params)
        if @empleado.save
            flash[:notice] = "El empleado se creó satisfactoriamente"
            redirect_to empleado_path(@empleado)
        else
            render "new"
        end
    end
    
    def show 
        @empleado = Empleado.find(params[:id])
    end
    
    def edit
        @empleado= Empleado.find(params[:id])
    end 
    
    def update
        @empleado = Empleado.find(params[:id])
         if @empleado.update(empleado_params)
            flash[:notice] = "El Empleado se editó satisfactoriamente"
            redirect_to empleado_path(@empleado)
        else
            render "edit"
        end
    end
    
    def destroy
        @empleado = empleado.find(params[:id])
        @empeleado.destroy
        flash[:notice] = "El empleado se eliminó satisfactoriamente"
        redirect_to empleados_path
    end
    
    def index
        @empleados = Empleado.all
    end
    
    private 
        def empleado_params
         params.require(:empleado).permit(:nombres,:apellidos,:cedula,:celular)
        end 
end
class ServiciosController < ApplicationController

    def new
        @servicio = Servicio.new
    end
    
    def create
         @servicio = Servicio.new(servicio_params)
        if @servicio.save
            flash[:notice] = "El servicio se creo satisfactoriamente"
            redirect_to servicio_path(@servicio)
        else
            render "new"
        end
    end
    
    def show 
        @servicio = Servicio.find(params[:id])
    end
    
    def edit
        @servicio = Servicio.find(params[:id])
    end 
    
    def update
        @servicio = Servicio.find(params[:id])
         if @servicio.update(servicio_params)
            flash[:notice] = "El servicio se creo satisfactoriamente"
            redirect_to servicio_path(@servicio)
        else
            render "edit"
        end
    end
    
    def destroy
        @servicio = Servicio.find(params[:id])
        @servicio.destroy
        flash[:notice] = "El servicio se eliminó satisfactoriamente"
        redirect_to servicios_path
    end
    
    def index
        @servicios = Servicio.all
    end
    
    private 
        def servicio_params
         params.require(:servicio).permit(:nombre,:detalles,:precioBase)
        end 
end
class SolicitudsController < ApplicationController

    def new
        @solicitud = Solicitud.new
    end
    
    def create
         @solicitud = Solicitud.new(solicitud_params)
        if @solicitud.save
            flash[:notice] = "La solicitud se creo satisfactoriamente"
            redirect_to solicitud_path(@solicitud)
        else
            render "new"
        end
    end
    
    def show 
        @solicitud = Solicitud.find(params[:id])
    end
    
    def edit
        @solicitud = Solicitud.find(params[:id])
    end 
    
    def update
        @solicitud = Solicitud.find(params[:id])
         if @solicitud.update(solicitud_params)
            flash[:notice] = "La solicitud se edito satisfactoriamente"
            redirect_to solicitud_path(@solicitud)
        else
            render "edit"
        end
    end
    
    def destroy
        @solicitud = Solicitud.find(params[:id])
        @solicitud.destroy
        flash[:notice] = "La solicitud se eliminó satisfactoriamente"
        redirect_to solicitud_path
    end
    
    def index
        @solicituds = Solicitud.all
    end
    
    private 
        def solicitud_params
         params.require(:solicitud).permit(:huesped_id,:servicio_id,:precio,:especificaciones)
        end
    
end
class HuespedsController < ApplicationController

    def new
        @huesped = Huesped.new
    end
    
    def create
         @huesped = Huesped.new(huesped_params)
        if @huesped.save
            flash[:notice] = "El Huesped se creo satisfactoriamente"
            redirect_to huesped_path(@huesped)
        else
            render "new"
        end
    end
    
    def show 
        @huesped = Huesped.find(params[:id])
    end
    
    def edit
        @huesped = Huesped.find(params[:id])
    end 
    
    def update
        @huesped = Huesped.find(params[:id])
         if @huesped.update(huesped_params)
            flash[:notice] = "El post se creo satisfactoriamente"
            redirect_to huesped_path(@huesped)
        else
            render "edit"
        end
    end
    
    def destroy
        @huesped = Huesped.find(params[:id])
        @huesped.destroy
        flash[:notice] = "El huesped se eliminó satisfactoriamente"
        redirect_to huespeds_path
    end
    
    def index
        @huespeds = Huesped.all
    end
    
    private 
        def huesped_params
         params.require(:huesped).permit(:cedula,:nombres,:apellidos,:celular,:email,:fecha_nacimiento,:pais_origen)
        end 
end
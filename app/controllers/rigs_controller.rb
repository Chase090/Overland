class RigsController < ApplicationController
    before_action :set_rig, only: [:show, :edit, :update, :destroy]
    
    
    def  show 
      
    end
    

    def  new 
        @rig = Rig.new
    end

    def  create 
        @rig = current_user.build_rig(rig_params)
        if @rig.save
            redirect_to rig_path(@rig)
        else
            render :new
        end
    end

    def  edit

    end

    def  update
       
        if @rig.update(rig_params)
          redirect_to rig_path(@rig)
        else
          render :edit
        end
    end

    def  destroy
        @rig.destroy
        redirect_to rig_path
    end


private

    def rig_params
        params.require(:rig).permit(:name, :make, :model, :year_model, :active)
    end

    def set_rig
        @rig = Rig.find_by(id: params[:id])
    end







end

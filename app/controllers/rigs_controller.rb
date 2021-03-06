class RigsController < ApplicationController
    before_action :logged_in_user
    before_action :set_rig, only: [:edit, :update, :destroy, :show]
    
    
    def show    
      
    end
    

    def new 
        
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
          redirect_to user_edit_path(current_user.id)
        else
          render :edit
        end
    end

    def  destroy
        @rig.destroy
        redirect_to profile_path(current_user.id)
    end


    private

        def rig_params
            params.require(:rig).permit(:name, :make, :model, :year_model, :active, :avatar)
        end

        def set_rig
            
            if rig = Rig.exists?(id: params[:id])
                @rig = Rig.find_by(id: params[:id])
            else 
                flash[:message] = "Nope doesn't exists, and stop that."
                redirect_to user_path(current_user)
            end
        end
    
    end
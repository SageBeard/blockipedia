class CollaboratorsController < ApplicationController

  def new  
  end

  def destroy
      @collaborator = collaborator.find(params[:id])

      if @collaborator.destroy
        flash[:notice] = "\"#{@collaborator.title}\" was deleted successfully."
        redirect_to collaborators_path
      else
        flash.now[:alert] = "There was an error deleting the collaborator."
        render :show
      end
    end
  end

class CollaboratorsController < ApplicationController

    def new
      @collaborator = Collaborator.new
    end

    def create
        @collaborator = Collaborator.new
        @collaborator.title = params[:wiki][:title]
        @collaborator.user = current_user

        if @collaborator.save
          flash[:notice] = "Collaborator was saved."
          redirect_to [@wiki]
        else

          flash.now[:alert] = "There was an error saving your collaborator. Please try again."
          render :new
        end
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

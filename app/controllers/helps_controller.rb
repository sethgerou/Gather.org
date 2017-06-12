class HelpsController < ApplicationController

  def index
    @helps = Help.all
    render :index
  end

  def edit
    @help = Help.find(params[:id])
  end

  def update
    @help = Help.find(params[:id])
    if @help.update(edit_help_params)
      redirect_to helps_path
    else
      render :edit
    end
  end

private
  def edit_help_params
    params.require(:help).permit(:summary)
  end

end

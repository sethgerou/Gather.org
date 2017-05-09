class SupportsController < ApplicationController

  def index
    @supports = Support.all
    @supports = @supports.sort { |a,b| a.title.downcase <=> b.title.downcase }
    render :index
  end

  def new
  end

  def edit
    @support = Support.find(params[:id])
  end

  def create
      @support = Support.new(support_params)
      if @support.save
        redirect_to supports_path
      else
        render :new
      end
  end

  def update
    @support = Support.find(params[:id])
    if @support.update(edit_support_params)
      redirect_to supports_path
    else
      render :edit
    end
  end

  def destroy
    @support = Support.find(params[:id])
    @support.destroy
    redirect_to supports_path
  end

  private
  def support_params
    params.require(:supports).permit(:title, :summary)
  end

  def edit_support_params
    params.require(:support).permit(:title, :summary)
  end

end

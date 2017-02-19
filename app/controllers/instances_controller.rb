class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end
  def new
  end
  def edit
    @instance = Instance.find(params[:id])
  end
  def create
    @instance = Instance.new(instance_params)
    @instance.save
    flash[:notice] = "Instance crée"
    redirect_to controller: "instances", action: "index"
  end
  def update
    @instance = Instance.find(params[:id])
    if @instance.update(instance_params)
      flash[:notice] = "Instance mise a jour"
      redirect_to controller: "instances", action: "index"
    else
      render 'edit'
    end
  end
  def destroy
    @instance = Instance.find(params[:id])
    @instance.destroy
    redirect_to controller: "instances", action: "index"
  end
  private
  def instance_params
    params.require(:instance).permit(:model_year, :model_mounth, :name, :city)
  end
end

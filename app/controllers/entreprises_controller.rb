class EntreprisesController < ApplicationController
  def index
    @entreprises = Entreprise.all
  end
  def new

  end
  def show

  end
  def edit
    @entreprise = Entreprise.find(params[:id])
  end
  def destroy
    @entreprise = Entreprise.find(params[:id])
    @entreprise.destroy
    flash[:notice] = "Entreprise supprimer"
    redirect_to controller: "entreprises", action: "index"
  end
  def create
    @entreprise = Entreprise.new(entreprise_params)
    @entreprise.save
    flash[:notice] = "Entreprise crée"
    redirect_to controller: "home", action: "index"
  end
  def update
    @entreprise = Entreprise.find(params[:id])
    if @entreprise.update(entreprise_params)
      flash[:notice] = "Entreprise mise a jour"
      redirect_to controller: "entreprises", action: "index"
    else
      render 'edit'
    end
  end
  private
  def entreprise_params
    params.require(:entreprise).permit(:name, :city)
  end
end

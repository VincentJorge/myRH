class AdministrationsController < ApplicationController
  def index
    @administration = Administration.all
  end
  def new
  end
  def show

  end
  def edit
    @administration = Administration.find(params[:id])
  end
  def destroy
    @administration = Administration.find(params[:id])
    @administration.destroy
    flash[:notice] = "Administrateur supprimer"
    redirect_to controller: "administrations", action: "index"
  end
    def create
    @password = SecureRandom.hex(5)
    @administration = Administration.new(administration_params)
    @administration.password = @password
    @administration.save
    @admin = params[:administration].permit(:email)[:email]
    AdminMailer.welcome_email(@admin, @password).deliver_now
    redirect_to controller: "home", action: "index"
    end
  def update
    @administration = Administration.find(params[:id])
    @administration.update(administrations_params)
      flash[:notice] = "Compte mit a jour"
      redirect_to controller: "administrations", action: "index"
    end
  private
  def administration_params
    params.require(:administration).permit(:login, :email, :password, :firstname, :lastname)
  end
  private
  def administrations_params
    params.require(:administration).permit(:login, :email, :password, :firstname, :lastname)
  end
end
class CandidatsController < ApplicationController
  def index
    @instances = Instance.all
  end
  def show
    @instances = Instance.find(params[:id])
  end
  def create
    @candidat = Candidat.new(candidat_params)
    @candidat.save
    @candidatMail = params[:candidat].permit(:email)[:email]
    @candidatFname = params[:candidat].permit(:firstname)[:firstname]
    @candidatLname = params[:candidat].permit(:lastname)[:lastname]
    CandidatMailer.candidat_email(@candidatMail, @candidatFname, @candidatLname).deliver_now
    redirect_to controller: "candidats", action: "index"
  end
  def candidat_params
    params.require(:candidat).permit(:firstname, :lastname, :born, :email)
  end
end

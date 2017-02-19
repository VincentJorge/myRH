class CandidatMailer < ApplicationMailer
  default from: 'vincentjorge220@gmail.com'
  def candidat_email(candidatMail, candidatFname, candidatLname)
    @candidatMail = candidatMail
    @candidatFname = candidatFname
    @candidatLname = candidatLname
    mail(to: @candidatMail, subject: 'Inscription instance')
  end
end

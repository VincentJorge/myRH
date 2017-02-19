class AdminMailer < ApplicationMailer
  default from: 'vincentjorge220@gmail.com'

  def welcome_email(admin, password)
    @admin = admin
    @password = password
    mail(to: @admin, subject: 'Welcome to My Awesome Site')
  end
end

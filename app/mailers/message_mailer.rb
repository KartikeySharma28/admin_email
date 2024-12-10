class MessageMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_email.subject
  #
  def send_email
    @user = params[:user]
    # mail to:@user.permit(:username),subject: @user.permit(:body)
    mail(to: @user.username, subject:"Broadcast")
  end
end

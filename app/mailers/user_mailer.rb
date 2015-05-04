class UserMailer < ApplicationMailer
  def send_email_notification_to_admin
    mail(to: 'demo4582@gmail.com', from: 'demo4582@gmail.com', subject: 'test')
  end
end

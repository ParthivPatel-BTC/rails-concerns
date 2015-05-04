module SendEmail
  extend ActiveSupport::Concern

  def send_email_notification_to_admin
    UserMailer.send_email_notification_to_admin.deliver
  end
end
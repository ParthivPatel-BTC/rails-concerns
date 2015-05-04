class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  after_create :send_email_notification_to_admin
  include SendEmail
end
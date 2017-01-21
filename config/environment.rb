# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Enables SendGrib on Heroku
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['app59142913@heroku.com'],
  :password => ENV['eniym7zf3690'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
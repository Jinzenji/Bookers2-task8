if Rails.env.production?
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'gmail.com',
    :user_name => "acfm.air967@gmail.com",
    :password => "cwesmwxsmhmhcpzi",
    :authentication => :plain,
    :enable_starttls_auto => true
  }
elsif Rails.env.development?
  ActionMailer::Base.delivery_method = :letter_opener
else
  ActionMailer::Base.delivery_method = :test
end
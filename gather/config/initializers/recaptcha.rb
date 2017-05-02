require 'dotenv'
Dotenv.load

Recaptcha.configure do |config|
  config.site_key  = ENV['Recaptcha_site_key']
  config.secret_key = ENV['Recaptcha_secret_key']
end

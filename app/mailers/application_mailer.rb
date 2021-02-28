class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:gmail, :correo)
  layout 'mailer'
end

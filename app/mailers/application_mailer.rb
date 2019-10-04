class ApplicationMailer < ActionMailer::Base
  default from:     "wineport",
          reply_to: "crazysimpleplanperfect@gmail.com"
  layout 'mailer'
end

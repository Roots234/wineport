class SampleMailer < ApplicationMailer
  def send_when_pay(user, total)
    @user = user
    @total = total
    mail to: @user.email,
         subject: 'お買い上げありがとうございます'
  end
end

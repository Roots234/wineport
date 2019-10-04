class SampleMailerPreview < ActionMailer::Preview
  def sample
     sample = Sample.new(name: "侍 太郎", message: "問い合わせメッセージ")
    
     SampleMailer.send_mail(user)
  end
end
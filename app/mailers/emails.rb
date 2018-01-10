class Emails < ApplicationMailer
  default from: 'chrisleeshu@163.com'

  def index(sender,recipient,subject,body,recipient_email)
    @sender=sender
    @recipient=recipient
    @subject=subject
    @body=body
    @recipient_email=recipient_email
    mail(to: @recipient_email,title:"课程网站提醒", subject:@subject)
  end

  def send_mail(params = {})
    @url  = 'http://example.com/login'
    mail( :subject => 'abcAAAAAAAASDFADSFADSFADSFDASFASDF',
          :to => "1226982115@qq.com",
          :from => 'm18801228937@163.com',
          :date => Time.now
    )
  end

end

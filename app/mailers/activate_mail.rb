class ActivateMail < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.activate_mail.sent.subject
  #
  def sent
    @subject    = '激活邮件'
    @body       = {'user'=>user}
    @recipients = '1226982115@qq.com'
    @from       = 'm18801228937@163.com'
    @sent_on    = Time.now
    @headers    = {}
    @content_type = 'text/html'
  end
end

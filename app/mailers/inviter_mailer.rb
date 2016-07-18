class InviterMailer < ApplicationMailer
  def callback_information(message)
    @message = message
    mail_first = 'flp.Frolkin@bk.ru'
    mail_second = 's.negrebmail@gmail.com'
    mail to: [mail_first, mail_second], subject: 'Добрый день'
  end
end

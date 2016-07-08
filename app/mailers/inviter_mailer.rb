class InviterMailer < ApplicationMailer
  def callback_information(name, phone, comment)
    @name = name
    @phone = phone
    @comment = comment
    mail_first = 's.negrebmail@gmail.com'
    mail_second = 'flp.Frolkin@bk.ru'
    mail to: [mail_first, mail_second], subject: 'Добрый день'
  end
end

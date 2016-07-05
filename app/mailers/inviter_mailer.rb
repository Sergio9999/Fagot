class InviterMailer < ApplicationMailer
  def callback_information(name, phone, comment)
    @name = name
    @phone = phone
    @comment = comment
    mail_first = 'sobolevsergey9999@gmail.com'
    mail_second = 'sergrpm@mail.ru'
    mail to: [mail_first, mail_second], subject: 'Добрый день'
  end
end

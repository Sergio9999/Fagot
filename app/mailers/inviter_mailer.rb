class InviterMailer < ApplicationMailer
  def callback_information(message)
    @message = message
    mail_first = 'sergrpm@mail.ru'
    mail_second = 'sobolevsergey9999@gmail.com'
    mail to: [mail_first, mail_second], subject: 'Добрый день'
  end
end

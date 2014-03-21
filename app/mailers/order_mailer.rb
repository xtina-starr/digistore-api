class OrderMailer < ActionMailer::Base
  default from: "mytunes@digistory.com"

  def confirmation_email(order)
    mail(to: order.email, subject: "Confirmation Email")
  end
end

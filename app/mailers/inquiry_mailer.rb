class InquiryMailer < ApplicationMailer
  # 問い合わせ送信
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(
      :from => 'gc1206ro@gmail.com',
      :to => 'gc1206ro@gmail.com',
      :subject => '【Enrich-ity】お問い合わせ通知'
    )
  end
end

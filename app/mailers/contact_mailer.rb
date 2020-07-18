class ContactMailer < ApplicationMailer
  def contact_mail(feed)
    @feed = feed
    mail to: "hrnr.ssk.pc@gmail.com", subject: "投稿の確認メール"
  end
end

class MailLoggerObserver
  def self.delivered_email(mail)
    if mail.mailer_klass == "AmatorMailer" && mail.mailer_action == "link_archive_show"
      puts '-------------------- MailLoggerObserver ------------------'
      puts "sender: #{mail.from}"
      puts "recipient: #{mail.to}"
      puts "bcc: #{mail.bcc}"
      puts "cc: #{mail.cc}"
      puts "subject: #{mail.subject}"
      puts "sent_at: #{mail.date}"
      #puts "body: #{body}"
      puts "mailer_klass: #{mail.mailer_klass}"
      puts "mailer_action: #{mail.mailer_action}"
    # puts "mailer_component: #{mail.mailer_component}"
      puts '----------------------------------------------------------'
    end

  end
end
class Mailer < ActionMailer::Base
  default from: "wwc@womenwhocode.com"
  
  def thank_donor(donation)
    @donation = donation
    @date = Time.now.strftime("%B %d, %Y")
    mail to: @donation.email, subject: 'Thank you for your Donation'
  end
end
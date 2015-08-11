class Mailer < ActionMailer::Base
  default from: "wwc@womenwhocode.com"
  
  def thank_donor(donation)
    @donation = donation
    mail to: @donation.email, subject: 'Thank you for your Donation'
  end
end
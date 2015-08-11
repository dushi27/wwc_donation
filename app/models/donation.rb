class Donation < ActiveRecord::Base
    after_create :send_email
    
    def send_email
        Mailer.thank_donor(self).deliver
    end
end

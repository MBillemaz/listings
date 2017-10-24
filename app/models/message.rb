class Message < ApplicationRecord
    belongs_to :user
    belongs_to :conversation

    after_create :send_email

    def self.getMessages(conv_id)
      Message.where("conversation_id = ?", conv_id)
    end

    def send_email(args)
      UserMailer.new_contact(args[:listing_id], args[:recipient_email], args[:message]).deliver_now
    end
end

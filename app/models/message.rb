class Message < ApplicationRecord
    belongs_to :user
    belongs_to :conversation

    after_create :send_email

    def self.getMessages(conv_id)
      Message.where("conversation_id = ?", conv_id)
    end

    def send_email
      email = conversation.listing.user.email
      UserMailer.new_contact(conversation.listing_id, email, message).deliver_now
    end
end

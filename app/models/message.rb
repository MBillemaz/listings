class Message < ApplicationRecord
    belongs_to :user
    belongs_to :conversation

    def self.getMessages(conv_id)
      Message.where("conversation_id = ?", conv_id).order("updated_at")
    end
  end
  
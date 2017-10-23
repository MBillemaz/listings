class Conversation < ApplicationRecord
    has_many :messages
    belongs_to :user
    belongs_to :listing

    def self.generate(params, current_user)
        Message.transaction do 
            conversation = Conversation.create(
                user_id: current_user.id,
                listing_id: params[:listing_id]
            )
            
            @contact = Message.new(
                user_id: current_user.id,
                conversation_id: conversation.id,
                message: params[:message]
            )
            @contact.save
        end
    end
end
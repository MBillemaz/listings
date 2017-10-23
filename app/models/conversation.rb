class Conversation < ApplicationRecord
    has_many :messages
    belongs_to :user
    belongs_to :listing

    def self.generate(params, current_user)
        Message.transaction do 

            conv_id = Conversation.where("listing_id = ? and user_id = ?", params[:listing_id], current_user.id).last
            if(conv_id == nil)
                conversation = Conversation.create(
                    user_id: current_user.id,
                    listing_id: params[:listing_id]
                )
            end
            
            @contact = Message.new(
                user_id: current_user.id,
                conversation_id: conv_id == nil ? conversation.id : conv_id.id,
                message: params[:message]
            )
            @contact.save
        end
    end

    def self.getConversations(user)
        Conversation.joins(:listing).where('conversations.user_id =1 OR listings.user_id =1')   
    end
end
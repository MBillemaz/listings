class Account::ConversationsController < Account::AccountController

    def index
        @conversations = Conversation.getConversations(current_user)
    end

    def show
        @conversation= Conversation.includes(:messages).find(params[:id])
    end
end